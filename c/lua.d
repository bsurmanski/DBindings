/*
** $Id: lua.h,v 1.283 2012/04/20 13:18:26 roberto Exp $
** Lua - A Scripting Language
** Lua.org, PUC-Rio, Brazil (http://www.lua.org)
** See Copyright Notice at the end of this file
*/

module c.lua;

public import c.luaconf;
import std.c.stdarg;

__gshared:
extern (C):

immutable LUA_VERSION_MAJOR	    = "5";
immutable LUA_VERSION_MINOR	    = "2";
immutable LUA_VERSION_NUM       = 502;
immutable LUA_VERSION_RELEASE   = "1";

immutable LUA_VERSION   = "Lua " ~ LUA_VERSION_MAJOR ~ "." ~ LUA_VERSION_MINOR;
immutable LUA_RELEASE   = LUA_VERSION ~ "."  ~ LUA_VERSION_RELEASE;
immutable LUA_COPYRIGHT = LUA_RELEASE ~ "  Copyright (C) 1994-2012 Lua.org, PUC-Rio";
immutable LUA_AUTHORS   = "R. Ierusalimschy, L. H. de Figueiredo, W. Celes";


/* mark for precompiled code ('<esc>Lua') */
immutable LUA_SIGNATURE = "\033Lua";

/* option for multiple returns in 'lua_pcall' and 'lua_call' */
immutable LUA_MULTRET   = (-1);

/*
** pseudo-indices
*/
immutable LUA_REGISTRYINDEX = (-LUAI_MAXSTACK - 1000);

int lua_upvalueindex(int i) {return LUA_REGISTRYINDEX - (i);};


/* thread status */
enum {
    LUA_OK = 0,
    LUA_YIELD = 1,
    LUA_ERRRUN = 2,
    LUA_ERRSYNTAX = 3,
    LUA_ERRMEM = 4,
    LUA_ERRGCMM = 5,
    LUA_ERRERR = 6,
}


struct lua_State;

alias int function (lua_State *L) lua_CFunction;

// functions that read/write blocks when loading/dumping Lua chunks
alias const(char) *function(lua_State *L, void *ud, size_t *sz) lua_Reader;

alias int function(lua_State *L, const void* p, size_t sz, void* ud) lua_Writer;


// prototype for memory-allocation functions
alias void *function(void *ud, void *ptr, size_t osize, size_t nsize) lua_Alloc;

// basic types
enum {
    LUA_TNONE = (-1),

    LUA_TNIL = 0,
    LUA_TBOOLEAN = 1,
    LUA_TLIGHTUSERDATA = 2,
    LUA_TNUMBER = 3,
    LUA_TSTRING = 4,
    LUA_TTABLE = 5,
    LUA_TFUNCTION = 6,
    LUA_TUSERDATA = 7,
    LUA_TTHREAD = 8,

    LUA_NUMTAGS = 9,
}

/* minimum Lua stack available to a C function */
immutable LUA_MINSTACK = 20;


/* predefined values in the registry */
enum {
    LUA_RIDX_MAINTHREAD = 1,
    LUA_RIDX_GLOBALS = 2,
    LUA_RIDX_LAST = LUA_RIDX_GLOBALS,
}

/* type of numbers in Lua */
alias LUA_NUMBER lua_Number;

/* type for integer functions */
alias LUA_INTEGER lua_Integer;

/* unsigned integer type */
alias LUA_UNSIGNED lua_Unsigned;

/*
** state manipulation
*/
lua_State *lua_newstate(lua_Alloc f, void *ud);
void       lua_close(lua_State *L);
lua_State *lua_newthread(lua_State *L);
lua_CFunction lua_atpanic(lua_State *L, lua_CFunction panicf);
const (lua_Number) *lua_version(lua_State *L);


/*
** basic stack manipulation
*/
int   lua_absindex(lua_State *L, int idx);
int   lua_gettop (lua_State *L);
void  lua_settop (lua_State *L, int idx);
void  lua_pushvalue (lua_State *L, int idx);
void  lua_remove (lua_State *L, int idx);
void  lua_insert (lua_State *L, int idx);
void  lua_replace (lua_State *L, int idx);
void  lua_copy (lua_State *L, int fromidx, int toidx);
int   lua_checkstack (lua_State *L, int sz);

void  lua_xmove (lua_State *from, lua_State *to, int n);


/*
** access functions (stack -> C)
*/

int             lua_isnumber (lua_State *L, int idx);
int             lua_isstring (lua_State *L, int idx);
int             lua_iscfunction (lua_State *L, int idx);
int             lua_isuserdata (lua_State *L, int idx);
int             lua_type (lua_State *L, int idx);
const(char)     *lua_typename (lua_State *L, int tp);

lua_Number      lua_tonumberx (lua_State *L, int idx, int *isnum);
lua_Integer     lua_tointegerx (lua_State *L, int idx, int *isnum);
lua_Unsigned    lua_tounsignedx (lua_State *L, int idx, int *isnum);
int             lua_toboolean (lua_State *L, int idx);
const(char)     *lua_tolstring (lua_State *L, int idx, size_t *len);
size_t          lua_rawlen (lua_State *L, int idx);
lua_CFunction   lua_tocfunction (lua_State *L, int idx);
void	       *lua_touserdata (lua_State *L, int idx);
lua_State      *lua_tothread (lua_State *L, int idx);
const(void)    *lua_topointer (lua_State *L, int idx);


/*
** Comparison and arithmetic functions
*/

enum {
    LUA_OPADD = 0,	/* ORDER TM */
    LUA_OPSUB = 1,
    LUA_OPMUL = 2,
    LUA_OPDIV = 3,
    LUA_OPMOD = 4,
    LUA_OPPOW = 5,
    LUA_OPUNM = 6,
}

void  lua_arith (lua_State *L, int op);

enum {
    LUA_OPEQ = 0,
    LUA_OPLT = 1,
    LUA_OPLE = 2,
}

int   lua_rawequal (lua_State *L, int idx1, int idx2);
int   lua_compare (lua_State *L, int idx1, int idx2, int op);


/*
** push functions (C -> stack)
*/
void        lua_pushnil (lua_State *L);
void        lua_pushnumber (lua_State *L, lua_Number n);
void        lua_pushinteger (lua_State *L, lua_Integer n);
void        lua_pushunsigned (lua_State *L, lua_Unsigned n);
const(char) *lua_pushlstring (lua_State *L, const char *s, size_t l);
const(char) *lua_pushstring (lua_State *L, const char *s);
const(char) *lua_pushvfstring (lua_State *L, const char *fmt,
                                                      va_list argp);
const(char) *lua_pushfstring (lua_State *L, const char *fmt, ...);
void  lua_pushcclosure (lua_State *L, lua_CFunction fn, int n);
void  lua_pushboolean (lua_State *L, int b);
void  lua_pushlightuserdata (lua_State *L, void *p);
int   lua_pushthread (lua_State *L);


/*
** get functions (Lua -> stack)
*/
void  lua_getglobal (lua_State *L, const char *var);
void  lua_gettable (lua_State *L, int idx);
void  lua_getfield (lua_State *L, int idx, const char *k);
void  lua_rawget (lua_State *L, int idx);
void  lua_rawgeti (lua_State *L, int idx, int n);
void  lua_rawgetp (lua_State *L, int idx, const void *p);
void  lua_createtable (lua_State *L, int narr, int nrec);
void *lua_newuserdata (lua_State *L, size_t sz);
int   lua_getmetatable (lua_State *L, int objindex);
void  lua_getuservalue (lua_State *L, int idx);


/*
** set functions (stack -> Lua)
*/
void  lua_setglobal (lua_State *L, const char *var);
void  lua_settable (lua_State *L, int idx);
void  lua_setfield (lua_State *L, int idx, const char *k);
void  lua_rawset (lua_State *L, int idx);
void  lua_rawseti (lua_State *L, int idx, int n);
void  lua_rawsetp (lua_State *L, int idx, const void *p);
int   lua_setmetatable (lua_State *L, int objindex);
void  lua_setuservalue (lua_State *L, int idx);


/*
** 'load' and 'call' functions (load and run Lua code)
*/
void  lua_callk (lua_State *L, int nargs, int nresults, int ctx,
                           lua_CFunction k);
void  lua_call(lua_State *L, int n, int r) {lua_callk(L, (n), (r), 0, null);}

int   lua_getctx (lua_State *L, int *ctx);

int   lua_pcallk (lua_State *L, int nargs, int nresults, int errfunc,
                            int ctx, lua_CFunction k);
int lua_pcall(lua_State *L, int n, int r, int f) { return lua_pcallk(L, (n), (r), (f), 0, null);}

int   lua_load (lua_State *L, lua_Reader reader, void *dt,
                                        const char *chunkname,
                                        const char *mode);

int lua_dump (lua_State *L, lua_Writer writer, void *data);


/*
** coroutine functions
*/
int  lua_yieldk (lua_State *L, int nresults, int ctx,
                           lua_CFunction k);
int lua_yield(lua_State *L, int n) { return lua_yieldk(L, (n), 0, null);}
int  lua_resume (lua_State *L, lua_State *from, int narg);
int  lua_status (lua_State *L);

/*
** garbage-collection function and options
*/

enum {
    LUA_GCSTOP = 0,
    LUA_GCRESTART = 1,
    LUA_GCCOLLECT = 2,
    LUA_GCCOUNT = 3,
    LUA_GCCOUNTB = 4,
    LUA_GCSTEP = 5,
    LUA_GCSETPAUSE = 6,
    LUA_GCSETSTEPMUL = 7,
    LUA_GCSETMAJORINC = 8,
    LUA_GCISRUNNING = 9,
    LUA_GCGEN = 10,
    LUA_GCINC = 11,
}

int lua_gc (lua_State *L, int what, int data);


/*
** miscellaneous functions
*/

int   lua_error (lua_State *L);
int   lua_next (lua_State *L, int idx);
void  lua_concat (lua_State *L, int n);
void  lua_len    (lua_State *L, int idx);

lua_Alloc lua_getallocf (lua_State *L, void **ud);
void      lua_setallocf (lua_State *L, lua_Alloc f, void *ud);



/*
** ===============================================================
** some useful macros
** ===============================================================
*/

LUA_NUMBER lua_tonumber(lua_State *L, int i) { return lua_tonumberx(L,i, null); }
LUA_INTEGER lua_tointeger(lua_State *L, int i) { return lua_tointegerx(L,i, null); }
LUA_UNSIGNED lua_tounsigned(lua_State *L, int i) { return lua_tounsignedx(L,i, null); }

void lua_pop(lua_State *L, int n) { lua_settop(L, -(n)-1); }

void lua_newtable(lua_State *L) { lua_createtable(L, 0, 0); }

void lua_register(lua_State *L, const(char) *n, lua_CFunction f) { 
                    lua_pushcfunction(L, (f)); lua_setglobal(L, (n)); }

void lua_pushcfunction(lua_State *L, lua_CFunction f) { lua_pushcclosure(L, (f), 0); }

int lua_isfunction(lua_State *L, int n) { return (lua_type(L, (n)) == LUA_TFUNCTION); }
int lua_istable(lua_State *L, int n) { return (lua_type(L, (n)) == LUA_TTABLE); }
int lua_islightuserdata(lua_State *L, int n) { return (lua_type(L, (n)) == LUA_TLIGHTUSERDATA); }
int lua_isnil(lua_State *L, int n) { return 	(lua_type(L, (n)) == LUA_TNIL); }
int lua_isboolean(lua_State *L, int n) { return (lua_type(L, (n)) == LUA_TBOOLEAN); }
int lua_isthread(lua_State *L, int n) { return (lua_type(L, (n)) == LUA_TTHREAD); }
int lua_isnone(lua_State *L, int n) { return 	(lua_type(L, (n)) == LUA_TNONE); }
int lua_isnoneornil(lua_State *L, int n) { return (lua_type(L, (n)) <= 0); }

void lua_pushliteral(lua_State *L, char[] s) { lua_pushlstring(L, (s ~ "\0").ptr, s.length); }

void lua_pushglobaltable(lua_State *L) { lua_rawgeti(L, LUA_REGISTRYINDEX, LUA_RIDX_GLOBALS); }

const(char) *lua_tostring(lua_State *L, int i){ return lua_tolstring(L, (i), null); }



/*
** {======================================================================
** Debug API
** =======================================================================
*/


/*
** Event codes
*/
enum {
    LUA_HOOKCALL = 0,
    LUA_HOOKRET = 1,
    LUA_HOOKLINE = 2,
    LUA_HOOKCOUNT = 3,
    LUA_HOOKTAILCALL = 4,
}


/*
** Event masks
*/
enum {
    LUA_MASKCALL = (1 << LUA_HOOKCALL),
    LUA_MASKRET = (1 << LUA_HOOKRET),
    LUA_MASKLINE = (1 << LUA_HOOKLINE),
    LUA_MASKCOUNT = (1 << LUA_HOOKCOUNT),
}

struct lua_Debug {
  int event;
  const char *name;	/* (n) */
  const char *namewhat;	/* (n) 'global', 'local', 'field', 'method' */
  const char *what;	/* (S) 'Lua', 'C', 'main', 'tail' */
  const char *source;	/* (S) */
  int currentline;	/* (l) */
  int linedefined;	/* (S) */
  int lastlinedefined;	/* (S) */
  ubyte nups;	/* (u) number of upvalues */
  ubyte nparams;/* (u) number of parameters */
  char isvararg;        /* (u) */
  char istailcall;	/* (t) */
  char short_src[LUA_IDSIZE]; /* (S) */
  /* private part */
  void *i_ci;  /* active function */
};

/* Functions to be called by the debugger in specific events */
alias void function(lua_State *L, lua_Debug *ar) lua_Hook;


int lua_getstack (lua_State *L, int level, lua_Debug *ar);
int lua_getinfo (lua_State *L, const char *what, lua_Debug *ar);
const(char) *lua_getlocal (lua_State *L, const lua_Debug *ar, int n);
const(char) *lua_setlocal (lua_State *L, const lua_Debug *ar, int n);
const(char) *lua_getupvalue (lua_State *L, int funcindex, int n);
const(char) *lua_setupvalue (lua_State *L, int funcindex, int n);

void *lua_upvalueid (lua_State *L, int fidx, int n);
void  lua_upvaluejoin (lua_State *L, int fidx1, int n1,
                                               int fidx2, int n2);

int lua_sethook (lua_State *L, lua_Hook func, int mask, int count);
lua_Hook lua_gethook (lua_State *L);
int lua_gethookmask (lua_State *L);
int lua_gethookcount (lua_State *L);



/* }====================================================================== */


/******************************************************************************
* Copyright (C) 1994-2012 Lua.org, PUC-Rio.
*
* Permission is hereby granted, free of charge, to any person obtaining
* a copy of this software and associated documentation files (the
* "Software"), to deal in the Software without restriction, including
* without limitation the rights to use, copy, modify, merge, publish,
* distribute, sublicense, and/or sell copies of the Software, and to
* permit persons to whom the Software is furnished to do so, subject to
* the following conditions:
*
* The above copyright notice and this permission notice shall be
* included in all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
* TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
******************************************************************************/
