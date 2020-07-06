/*
 * \file lua_GeographicLib.hpp
 * \brief Lua wrapper for GeographicLib
 * 
 * Copyright (c) Yida Zhang (2013) <yida@seas.upenn.edu>
 * Licensed under the MIT/X11 License
 *
 */

#ifndef __LUAGEOGRAPHICLIB_H__
#define __LUAGEOGRAPHICLIB_H__

  int lua_GeographicLib_index(lua_State *L);
  extern "C" int luaopen_Geocentric(lua_State *L);
#endif
