/*
** $Id: luaconf.h,v 1.172 2012/05/11 14:14:42 roberto Exp $
** Configuration file for Lua
** See Copyright Notice in lua.h
*/

module c.luaconf;

import std.c.stdio;

shared:
extern (C):

/*
** ==================================================================
** Search for "@@" to find all configurable definitions.
** ===================================================================
*/

/*
@@ LUA_ENV is the name of the variable that holds the current
@@ environment, used to access global names.
** CHANGE it if you do not like this name.
*/
immutable LUA_ENV = "_ENV";

/*
@@ LUA_QL describes how error messages quote program elements.
** CHANGE it if you want a different appearance.
*/
/*
#define LUA_QL(x)	"'" x "'"
#define LUA_QS		LUA_QL("%s")
*/


/*
@@ LUA_IDSIZE gives the maximum size for the description of the source
@* of a function in debug information.
** CHANGE it if you want a different size.
*/
immutable LUA_IDSIZE = 60;

/*
@@ LUAI_MAXSHORTLEN is the maximum length for short strings, that is,
** strings that are internalized. (Cannot be smaller than reserved words
** or tags for metamethods, as these strings must be internalized;
** #("function") = 8, #("__newindex") = 10.)
*/
immutable LUAI_MAXSHORTLEN = 40;

/* }================================================================== */



/*
@@ LUAI_BITSINT defines the number of bits in an int.
** CHANGE here if Lua cannot automatically detect the number of bits of
** your machine. Probably you do not need to change this.
*/
/* int has at least 32 bits */
immutable LUAI_BITSINT = 32;

/*
@@ LUA_INT32 is an signed integer with exactly 32 bits.
@@ LUAI_UMEM is an unsigned integer big enough to count the total
@* memory used by Lua.
@@ LUAI_MEM is a signed integer big enough to count the total memory
@* used by Lua.
** CHANGE here if for some weird reason the default definitions are not
** good enough for your machine. Probably you do not need to change
** this.
*/
alias LUA_INT32 = int;
alias LUAI_UMEM = size_t;
alias LUAI_MEM  = ptrdiff_t;

/*
@@ LUAI_MAXSTACK limits the size of the Lua stack.
** CHANGE it if you need a different limit. This limit is arbitrary;
** its only purpose is to stop Lua to consume unlimited stack
** space (and to reserve some numbers for pseudo-indices).
*/
immutable LUAI_MAXSTACK = 1000000;

/* reserve some space for error handling */
immutable LUAI_FIRSTPSEUDOIDX = (-LUAI_MAXSTACK - 1000);

/*
@@ LUAL_BUFFERSIZE is the buffer size used by the lauxlib buffer system.
** CHANGE it if it uses too much C-stack space.
*/
immutable LUAL_BUFFERSIZE =  BUFSIZ;

/*
** {==================================================================
@@ LUA_NUMBER is the type of numbers in Lua.
** CHANGE the following definitions only if you want to build Lua
** with a number type different from double. You may also need to
** change lua_number2int & lua_number2integer.
** ===================================================================
*/

alias LUA_NUMBER = double;

/*
@@ LUAI_UACNUMBER is the result of an 'usual argument conversion'
@* over a number.
*/
alias LUAI_UACNUMBER = double;

/*
@@ LUA_INTEGER is the integral type used by lua_pushinteger/lua_tointeger.
** CHANGE that if ptrdiff_t is not adequate on your machine. (On most
** machines, ptrdiff_t gives a good choice between int or long.)
*/
alias LUA_INTEGER = ptrdiff_t;

/*
@@ LUA_UNSIGNED is the integral type used by lua_pushunsigned/lua_tounsigned.
** It must have at least 32 bits.
*/
alias LUA_UNSIGNED = uint;
