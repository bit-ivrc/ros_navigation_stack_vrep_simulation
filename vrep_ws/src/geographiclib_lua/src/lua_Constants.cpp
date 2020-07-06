/*
 * \file lua_Constants.cpp
 * \brief Lua wrapper for GeographicLib::Constants
 * 
 * Copyright (c) Yida Zhang (2013) <yida@seas.upenn.edu>
 * Licensed under the MIT/X11 License
 *
 */

#include <lua.hpp>

#include <exception>
#include <GeographicLib/Constants.hpp>


using namespace std;
using namespace GeographicLib;

static int lua_Constants_WGS84_a(lua_State *L) {
  try {
    double a = Constants::WGS84_a();
    lua_pushnumber(L, a);
  }
  catch (exception& e) {
    luaL_error(L, "Caught exception");
  }
  return 1;
}

static int lua_Constants_WGS84_f(lua_State *L) {
  try {
    double f = Constants::WGS84_f();
    lua_pushnumber(L, f);
  }
  catch (exception& e) {
    luaL_error(L, "Caught exception");
  }
  return 1;
}

static const luaL_Reg Constants_Methods [] = {
  {NULL, NULL}
};

static const luaL_Reg Constants_Functions [] = {
  {"WGS84_a", lua_Constants_WGS84_a},
  {"WGS84_f", lua_Constants_WGS84_f},
  {NULL, NULL}
};

extern "C" int luaopen_Constants(lua_State *L) {
  luaL_register(L, NULL, Constants_Methods);
  luaL_register(L, "Constants", Constants_Functions);
  return 1;
}

