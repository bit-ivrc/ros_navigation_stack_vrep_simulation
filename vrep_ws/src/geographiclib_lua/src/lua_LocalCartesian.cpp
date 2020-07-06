/*
 * \file lua_LocalCartesian.cpp
 * \brief Lua wrapper for GeographicLib::LocalCartesian
 * 
 * Copyright (c) Yida Zhang (2013) <yida@seas.upenn.edu>
 * Licensed under the MIT/X11 License
 *
 */

#include <lua.hpp>

#include <exception>
#include <GeographicLib/LocalCartesian.hpp>

#include "lua_GeographicLib.hpp"
#include "lua_Geocentric.hpp"

using namespace std;
using namespace GeographicLib;

#define MT_NAME "LocalCartesian_MT"

LocalCartesian * lua_checkLocalCartesian(lua_State *L, int narg) {
  void *proj = luaL_checkudata(L, narg, MT_NAME);
  luaL_argcheck(L, *(LocalCartesian **)proj != NULL, narg, "invalid Geocentric");
  return (LocalCartesian *)proj;
}

static int lua_LocalCartesian_new(lua_State *L) {
  double lat0 = luaL_checknumber(L, 1);
  double lon0 = luaL_checknumber(L, 2);
  double h0 = luaL_checknumber(L, 3);
  Geocentric *earth = lua_checkGeocentric(L, 4);

  try {
    LocalCartesian *proj = new (lua_newuserdata(L, sizeof(LocalCartesian))) 
        LocalCartesian(lat0, lon0, h0, *earth);
  }
  catch (exception& e) {
    luaL_error(L, "Caught exception");
  }
  luaL_getmetatable(L, MT_NAME);
  lua_setmetatable(L, -2);

  return 1;
}

static int lua_LocalCartesian_Forward(lua_State *L) {
  LocalCartesian *proj = lua_checkLocalCartesian(L, 1);

  double lat = luaL_checknumber(L, 2);
  double lon = luaL_checknumber(L, 3);
  double h = luaL_checknumber(L, 4);

  try {
    double x, y, z;
    proj->Forward(lat, lon, h, x, y, z);
    lua_createtable(L, 0, 1);
    lua_pushstring(L, "x");
    lua_pushnumber(L, x);
    lua_settable(L, -3);

    lua_pushstring(L, "y");
    lua_pushnumber(L, y);
    lua_settable(L, -3);

    lua_pushstring(L, "z");
    lua_pushnumber(L, z);
    lua_settable(L, -3);

  }
  catch (exception& e) {
    luaL_error(L, "Caught exception");
  }
  return 1;
}

static int lua_LocalCartesian_Reverse(lua_State *L) {
  LocalCartesian *proj = lua_checkLocalCartesian(L, 1);

  double x = luaL_checknumber(L, 2);
  double y = luaL_checknumber(L, 3);
  double z = luaL_checknumber(L, 4);

  try {
    double lat, lon, h;
    proj->Reverse(x, y, z, lat, lon, h);
    lua_createtable(L, 0, 1);
    lua_pushstring(L, "lat");
    lua_pushnumber(L, lat);
    lua_settable(L, -3);

    lua_pushstring(L, "lon");
    lua_pushnumber(L, lon);
    lua_settable(L, -3);

    lua_pushstring(L, "h");
    lua_pushnumber(L, h);
    lua_settable(L, -3);

  }
  catch (exception& e) {
    luaL_error(L, "Caught exception");
  }

  return 1;
}

static const luaL_Reg LocalCartesian_Methods [] = {
  {"Forward", lua_LocalCartesian_Forward},
  {"Reverse", lua_LocalCartesian_Reverse},
  {NULL, NULL}
};

static const luaL_Reg LocalCartesian_Functions [] = {
  {"new", lua_LocalCartesian_new},
  {NULL, NULL}
};

extern "C" int luaopen_LocalCartesian(lua_State *L) {
  luaL_newmetatable(L, MT_NAME);

  // Implement index method:
  lua_pushstring(L, "__index");
  lua_pushcfunction(L, lua_GeographicLib_index);
  lua_settable(L, -3);

  luaL_register(L, NULL, LocalCartesian_Methods);
  luaL_register(L, "LocalCartesian", LocalCartesian_Functions);
  return 1;
}

