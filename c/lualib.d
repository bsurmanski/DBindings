/*
** $Id: lualib.h,v 1.43 2011/12/08 12:11:37 roberto Exp $
** Lua standard libraries
** See Copyright Notice in lua.h
*/

module c.lualib;
public import c.lua;

__gshared:
extern(C):

int luaopen_base (lua_State *L);

const LUA_COLIBNAME = "coroutine";
int luaopen_coroutine (lua_State *L);

const LUA_TABLIBNAME = "table";
int luaopen_table (lua_State *L);

const LUA_IOLIBNAME = "io";
int luaopen_io (lua_State *L);

const LUA_OSLIBNAME = "os";
int luaopen_os (lua_State *L);

const LUA_STRLIBNAME = "string";
int luaopen_string (lua_State *L);

const LUA_BITLIBNAME = "bit32";
int luaopen_bit32 (lua_State *L);

const LUA_MATHLIBNAME = "math";
int luaopen_math (lua_State *L);

const LUA_DBLIBNAME = "debug";
int luaopen_debug (lua_State *L);

const LUA_LOADLIBNAME = "package";
int luaopen_package (lua_State *L);

/* open all previous libraries */
void luaL_openlibs (lua_State *L);
