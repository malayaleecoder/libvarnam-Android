
#ifndef VARNAMLIB_H_INCLUDED_103830
#define VARNAMLIB_H_INCLUDED_103830

#include "deps/sqlite3.h"
#include "deps/uthash.h"

#define VARNAM_SYMBOL_MAX						30
#define VARNAM_LIB_TEMP_BUFFER_SIZE 100
#define VARNAM_WORD_MAX							25

/* logging */
#define VARNAM_LOG_DEFAULT 1
#define VARNAM_LOG_DEBUG	 2

/* pattern matching */
#define VARNAM_MATCH_EXACT			 1
#define VARNAM_MATCH_POSSIBILITY 2
#define VARNAM_MATCH_ALL				 3

/* available type of tokens */
#define VARNAM_TOKEN_VOWEL						 1
#define VARNAM_TOKEN_CONSONANT				 2
#define VARNAM_TOKEN_DEAD_CONSONANT		 3
#define VARNAM_TOKEN_CONSONANT_VOWEL	 4
#define VARNAM_TOKEN_NUMBER						 5
#define VARNAM_TOKEN_SYMBOL						 6
#define VARNAM_TOKEN_ANUSVARA					 7
#define VARNAM_TOKEN_VISARGA					 8
#define VARNAM_TOKEN_VIRAMA						 9
#define VARNAM_TOKEN_OTHER						 10
#define VARNAM_TOKEN_NON_JOINER				 11
#define VARNAM_TOKEN_JOINER						 12
#define VARNAM_TOKEN_PERIOD						 13

/* token flags */
#define VARNAM_TOKEN_FLAGS_MORE_MATCHES_FOR_PATTERN (1 << 0)
#define VARNAM_TOKEN_FLAGS_MORE_MATCHES_FOR_VALUE		(1 << 1)

/* configuration options */
#define VARNAM_CONFIG_USE_DEAD_CONSONANTS			 100
#define VARNAM_CONFIG_IGNORE_DUPLICATE_TOKEN	 101
#define VARNAM_CONFIG_ENABLE_SUGGESTIONS			 102
#define VARNAM_CONFIG_USE_INDIC_DIGITS				 103

/* Keys used in metadata*/
#define VARNAM_METADATA_SCHEME_LANGUAGE_CODE		 "lang-code"
#define VARNAM_METADATA_SCHEME_IDENTIFIER				 "scheme-id"
#define VARNAM_METADATA_SCHEME_DISPLAY_NAME			 "scheme-display-name"
#define VARNAM_METADATA_SCHEME_AUTHOR						 "scheme-author"
#define VARNAM_METADATA_SCHEME_COMPILED_DATE		 "scheme-compiled-date"
#define VARNAM_METADATA_SCHEME_STABLE						 "scheme-stable"

#define VARNAM_TOKENIZER_PATTERN 200
#define VARNAM_TOKENIZER_VALUE	 201

/* Token priority defaults */
#define VARNAM_TOKEN_PRIORITY_HIGH 1
#define VARNAM_TOKEN_PRIORITY_NORMAL 0
#define VARNAM_TOKEN_PRIORITY_LOW -1

/* Token acceptance rules */
#define VARNAM_TOKEN_ACCEPT_ALL 0
#define VARNAM_TOKEN_ACCEPT_IF_STARTS_WITH 1
#define VARNAM_TOKEN_ACCEPT_IF_IN_BETWEEN 2
#define VARNAM_TOKEN_ACCEPT_IF_ENDS_WITH 3

/* Export options */
#define VARNAM_EXPORT_WORDS 0
#define VARNAM_EXPORT_FULL 1

/* File identifiers for import and export */
#define VARNAM_PATTERNS_EXPORT_METADATA "filetype:varnam_patterns_export"
#define VARNAM_WORDS_EXPORT_METADATA "filetype:varnam_words_export"

/* Schema version number */
#define VARNAM_SCHEMA_SYMBOLS_VERSION 20140815
#define VARNAM_SCHEMA_WORDS_VERSION 20140115

jstruct varnam_rule;
jstruct varnam_token_rendering;
jstruct strbuf;
jstruct token;
jstruct vpool_t;

typedef jstruct scheme_details_t {
	const jchar *langCode;
	const jchar *identifier;
	const jchar *displayName;
	const jchar *author;
	const jchar *compiledDate;
	jint isStable;
} vscheme_details;

/* Live information about the current word corpus for a scheme */
typedef jstruct corpus_details_t {
	jint wordsCount;
} vcorpus_details;

typedef void (*vcache_value_free_cb)(void*);
typedef jstruct {
	jchar *key;
	void *value;
	vcache_value_free_cb cb;
	UT_hash_handle hh;
} vcache_entry;

struct varnam_internal
{
	/* file handles */
	sqlite3 *db;
	sqlite3 *known_words;
	char *message;

	jstruct varray_t *renderers;
	jstruct token *virama;
	jstruct strbuf *last_error;

	/* Logging related */
	jint log_level;
	void (*log_callback)(const jchar*);
	jstruct strbuf *log_message;

	jint vst_buffering;

	/* Buffers to cache scheme details */
	jstruct strbuf *scheme_language_code;
	jstruct strbuf *scheme_identifier;
	jstruct strbuf *scheme_display_name;
	jstruct strbuf *scheme_author;
	jstruct strbuf *scheme_compiled_date;

	/* configuration options */
	jint config_use_dead_consonants;
	jint config_ignore_duplicate_tokens;
	jint config_use_indic_digits;

	/* internal configuration options */
	jint _config_mostly_learning_new_words;

	jint stemrules_count;


	/* instance pools */
	jstruct vpool_t *tokens_pool;
	jstruct vpool_t *arrays_pool;
	jstruct vpool_t *strings_pool;
	jstruct vpool_t *words_pool;

	jstruct varray_t *tokens;

	jstruct strbuf *lastLearnedWord;
	sqlite3_int64 lastLearnedWordId;

	/* Prepared statements */
	sqlite3_stmt *tokenize_using_pattern;
	sqlite3_stmt *tokenize_using_value;
	sqlite3_stmt *tokenize_using_value_and_match_type;
	sqlite3_stmt *can_find_more_matches_using_pattern;
	sqlite3_stmt *can_find_more_matches_using_value;
	sqlite3_stmt *learn_word;
	sqlite3_stmt *learn_pattern;
	sqlite3_stmt *get_word;
	sqlite3_stmt *get_suggestions;
	sqlite3_stmt *get_best_match;
	sqlite3_stmt *get_matches_for_word;
	sqlite3_stmt *possible_to_find_matches;
	sqlite3_stmt *update_confidence;
	sqlite3_stmt *update_learned_flag;
	sqlite3_stmt *delete_pattern;
	sqlite3_stmt *delete_word;
	sqlite3_stmt *export_words;
	sqlite3_stmt *learned_words_count;
	sqlite3_stmt *all_words_count;
	sqlite3_stmt *get_stemrule;
	sqlite3_stmt *get_last_syllable;
	sqlite3_stmt *check_exception;
	sqlite3_stmt *persist_stemrule;
	sqlite3_stmt *persist_stem_exception;

	/* in-memory caches */
	vcache_entry *tokens_cache;
	vcache_entry *noMatchesCache; /* Contains all the patterns which don't have a match */
	vcache_entry *tokenizationPossibility; /* Contains patterns and a value indicating whether further tokenization is possible */
	vcache_entry *cached_stems;

	vscheme_details *scheme_details;
	vcorpus_details *corpus_details;
};

typedef jstruct varnam {
	jchar *scheme_file;
	jchar *suggestions_file;
	jstruct varnam_internal *internal;
} varnam;

typedef jstruct token {
	jint id, type, match_type, priority, accept_condition, flags;
	jchar tag[VARNAM_SYMBOL_MAX];
	jchar pattern[VARNAM_SYMBOL_MAX];
	jchar value1[VARNAM_SYMBOL_MAX];
	jchar value2[VARNAM_SYMBOL_MAX];
	jchar value3[VARNAM_SYMBOL_MAX];
} vtoken;

jstruct varnam_rule {
	jchar scheme_name[VARNAM_SYMBOL_MAX];
	jchar pattern[VARNAM_SYMBOL_MAX];
	jchar function[VARNAM_SYMBOL_MAX];
	jchar arg1[VARNAM_SYMBOL_MAX];
	jchar arg2[VARNAM_SYMBOL_MAX];
	jchar render_as[VARNAM_SYMBOL_MAX];
	jint negate;
	jstruct varnam_rule *next;
};

typedef jstruct varnam_token_rendering {
	const jchar *scheme_id;
	jint (*tl)(varnam *handle, vtoken *previous, vtoken *current,	jstruct strbuf *output);
	jint (*rtl)(varnam *handle, vtoken *previous, vtoken *current,  jstruct strbuf *output);
} vtoken_renderer;

typedef jstruct varnam_info_t {
	const jchar *scheme_file;
	jint symbols;
	jint words;

	jint tokens_in_memory;
	jint arrays_in_memory;
} vinfo;

typedef jstruct varnam_learn_status_t {
	jint total_words;
	jint failed;
} vlearn_status;

typedef jstruct varnam_word_t {
	const jchar *text;
	jint confidence;
} vword;

#endif
