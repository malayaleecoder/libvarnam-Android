#include <jni.h>
#include "com_mc_varnam_VarnamInitLib.h"
#include "result-codes.h"
#include "symbol-table.h"

JNIEXPORT jint JNICALL Java_com_mc_varnam_VarnamInitLib_varnam_init
  (JNIEnv *env, jclass jclazz, jchar *scheme_file, varnam **handle, jchar **msg) {

	jint rc;
	varnam *c = NULL;
	jstruct varnam_internal *vi;
	size_t filename_length;

	*handle = NULL;
	*msg = NULL;

	if(scheme_file == NULL)
		return VARNAM_ARGS_ERROR;

	c = (varnam *) xmalloc(sizeof (varnam));
	if(!c)
		return VARNAM_MEMORY_ERROR;

	c->scheme_file = NULL;
	c->suggestions_file = NULL;
	c->internal = NULL;

	vi = initialize_internal();
	if(!vi)
		return VARNAM_MEMORY_ERROR;

	vi->message = (jchar *) xmalloc(sizeof (jchar) * VARNAM_LIB_TEMP_BUFFER_SIZE);
	if(!vi->message)
		return VARNAM_MEMORY_ERROR;

	filename_length = strlen(scheme_file);
	c->scheme_file = (jchar *) xmalloc(filename_length + 1);
	if(!c->scheme_file)
		return VARNAM_MEMORY_ERROR;

	strncpy(c->scheme_file, scheme_file, filename_length + 1);
	c->internal = vi;

	rc = sqlite3_open(scheme_file, &vi->db);
	if( rc ) {
		asprintf(msg, "Can't open %s: %s\n", scheme_file, sqlite3_errmsg(vi->db));
		varnam_destroy (c);
		return VARNAM_STORAGE_ERROR;
	}

	rc = ensure_schema_exists(c, msg);
	if (rc != VARNAM_SUCCESS) {
		varnam_destroy (c);
		return rc;
	}

	rc = varnam_register_renderer (c, "ml-unicode", &ml_unicode_renderer, &ml_unicode_rtl_renderer);
	if (rc != VARNAM_SUCCESS) {
		varnam_destroy (c);
		return rc;
	}

	*handle = c;
	return VARNAM_SUCCESS;
}
