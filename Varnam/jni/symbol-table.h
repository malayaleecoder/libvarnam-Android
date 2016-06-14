
#ifndef VARNAM_SYMBOL_TABLE_H_INCLUDED_120215
#define VARNAM_SYMBOL_TABLE_H_INCLUDED_120215

#include "vtypes.h"
#include "varray.h"

/**
 * checks the schema availability. this function will create it when necessary
 **/
jint
ensure_schema_exists(varnam *handle, jchar **msg);

/**
 * Starts buffering
 **/
jint
vst_start_buffering(varnam *handle);

/**
 * Persist the token
 **/
jint
vst_persist_token(
    varnam *handle,
    const jchar *pattern,
    const jchar *value1,
    const jchar *value2,
    const jchar *value3,
    const jchar *tag,
    jint token_type,
    jint match_type,
    jint priority,
    jint accept_condition);

jint
vst_persist_stemrule(varnam *handle, const jchar* old_ending, const jchar* new_ending);

jint
vst_persist_stem_exception(varnam *handle, const jchar *rule, const jchar *exception);

/**
 * Flushes changes to disk
 **/
jint
vst_flush_changes(
    varnam *handle);

/**
 * Rollback changes
 **/
jint
vst_discard_changes(varnam *handle);

/**
 * Reads VARNAM_TOKEN_VIRAMA and assigns that to output
 **/
jint
vst_get_virama(varnam* handle, jstruct token **output);

jint
vst_get_all_tokens (varnam* handle, jint token_type, varray *tokens);

/**
 * Adds supplied metadata
 **/
jint
vst_add_metadata (varnam *handle, const jchar* key, const jchar* value);

/* Tokenizes the input and add the tokens into result. Result will point to a multidimensional array
 * where each element will be an array of vtoken* */
jint
vst_tokenize (varnam *handle, const jchar *input, jint tokenize_using, jint match_type, varray *result);

void
print_tokens_array(varray *tokens);

void
destroy_all_statements(jstruct varnam_internal* vi);

jint
vst_make_prefix_tree (varnam *handle);

jint
vst_has_stemrules (varnam *handle);

jint
vst_get_last_syllable (varnam *handle, strbuf *string, strbuf *syllable);

jint
vst_check_exception(varnam *handle, strbuf *word_buffer, strbuf *end_buffer);

jint
vst_get_stem(varnam* handle, strbuf* old_ending, strbuf *new_ending);

jint
vst_stamp_version (varnam *handle);

jint
vst_load_scheme_details(varnam *handle, vscheme_details *output);

#endif
