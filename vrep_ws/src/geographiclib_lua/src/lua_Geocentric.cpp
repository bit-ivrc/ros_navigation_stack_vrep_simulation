/*
 * \file lua_Geocentric.cpp
 * \brief Lua wrapper for GeographicLib::Geocentric
 * 
 * Copyright (c) Yida Zhang (2013) <yida@seas.upenn.edu>
 * Licensed under the MIT/X11 License
 *
 */

#include <lua.hpp>

#include <iostream>
#include <exception>
#include <GeographicLib/Geocentric.hpp>

#include "lua_GeographicLib.hpp"


using namespace std;
using namespace GeographicLib;

#define MT_NAME "Geocentric_MT"

Geocentric * lua_checkGeocentric(lua_State *L, int narg) {
  void *earth = luaL_checkudata(L, narg, MT_NAME);
  luaL_argcheck(L, *(Geocentric **)earth != NULL, narg, "invalid Geocentric");
  return (Geocentric *)earth;
}

static int lua_Geocentric_new(lua_State *L) {
  double a = luaL_checknumber(L, 1);
  double f = luaL_checknumber(L, 2);
//  Geocentric *earth = (Geocentric *)lua_newuserdata(L, sizeof(Geocentric)); 
  try {
    Geocentric *earth = new (lua_newuserdata(L, sizeof(Geocentric))) Geocentric(a, f);
  }
  catch (exception& e) {
    luaL_error(L, "Caught exception");
  }
  luaL_getmetatable(L, MT_NAME);
  lua_setmetatable(L, -2);

  return 1;
}

static int lua_Geocentric_Forward(lua_State *L) {
  Geocentric *earch = lua_checkGeocentric(L, 1);

  double lat = luaL_checknumber(L, 2);
  double lon = luaL_checknumber(L, 3);
  double h = luaL_checknumber(L, 4);

  try {
    double x, y, z;
    earch->Forward(lat, lon, h, x, y, z);
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

static int lua_Geocentric_Reverse(lua_State *L) {
  Geocentric *earch = lua_checkGeocentric(L, 1);

  double x = luaL_checknumber(L, 2);
  double y = luaL_checknumber(L, 3);
  double z = luaL_checknumber(L, 4);

  try {
    double lat, lon, h;
    earch->Reverse(x, y, z, lat, lon, h);
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

static const luaL_Reg Geocentric_Methods [] = {
  {"Forward", lua_Geocentric_Forward},
  {"Reverse", lua_Geocentric_Reverse},
  {NULL, NULL}
};

static const luaL_Reg Geocentric_Functions [] = {
  {"new", lua_Geocentric_new},
  {NULL, NULL}
};

extern "C" int luaopen_Geocentric(lua_State *L) {
  luaL_newmetatable(L, MT_NAME);

  // Implement index method:
  lua_pushstring(L, "__index");
  lua_pushcfunction(L, lua_GeographicLib_index);
  lua_settable(L, -3);

  luaL_register(L, NULL, Geocentric_Methods);
  luaL_register(L, "Geocentric", Geocentric_Functions);
  return 1;
}

