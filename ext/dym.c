#include "ruby.h"
#include <dym.h>
#include <stdlib.h>

static VALUE rbdym_dl_edist(VALUE self, VALUE s1, VALUE s2);
static char *rstr2cstr(VALUE str);

void Init_dym()
{
	VALUE mod = rb_define_module("DYM");
	rb_define_method(mod, "edist", rbdym_dl_edist, 2);
}

static VALUE rbdym_dl_edist(VALUE self, VALUE s1, VALUE s2)
{
	int dist;
	char *cstr1;
	char *cstr2;
	VALUE rb_dist;

	if (RB_TYPE_P(s1, T_STRING) != 1 || RB_TYPE_P(s2, T_STRING) != 1) {
		return Qnil;
	}

	cstr1 = rstr2cstr(s1);
	cstr2 = rstr2cstr(s2);

	if (cstr1 == NULL || cstr2 == NULL) {
		free(cstr1);
		free(cstr2);
		return Qnil;
	}

	dist = dym_dl_edist(cstr1, cstr2);
	rb_dist = INT2NUM(dist);
	
	free(cstr2);
	free(cstr1);

	return rb_dist;
}

static char *rstr2cstr(VALUE str)
{
	size_t len;
	char *cstr;

	if (RB_TYPE_P(str, T_STRING) != 1) {
		return NULL;
	}

	len = RSTRING_LEN(str);
	cstr = calloc(len + 1, 1);
	if (cstr == NULL) {
		return NULL;
	}
	strncpy(cstr, RSTRING_PTR(str), len);

	return cstr;
}
