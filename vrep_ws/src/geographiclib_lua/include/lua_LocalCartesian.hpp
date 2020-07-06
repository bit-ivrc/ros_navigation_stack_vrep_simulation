/*
 * \file lua_LocalCartesian.hpp
 * \brief Lua wrapper for GeographicLib::LocalCartesian
 * 
 * Copyright (c) Yida Zhang (2013) <yida@seas.upenn.edu>
 * Licensed under the MIT/X11 License
 *
 */

#ifndef __LUALOCALCARTESIAN_H__
#define __LUALOCALCARTESIAN_H__

#include <GeographicLib/LocalCartesian.hpp>

  GeographicLib::LocalCartesian * lua_checkLocalCartesian(lua_State *L, int narg);
  extern "C" int luaopen_LocalCartesian(lua_State *L);
#endif
