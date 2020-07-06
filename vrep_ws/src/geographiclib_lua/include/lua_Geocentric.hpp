/*
 * \file lua_Geocentric.hpp
 * \brief Lua wrapper for GeographicLib::Geocentric
 * 
 * Copyright (c) Yida Zhang (2013) <yida@seas.upenn.edu>
 * Licensed under the MIT/X11 License
 *
 */

#ifndef __LUAGEOCENTRIC_H__
#define __LUAGEOCENTRIC_H__

#include <GeographicLib/Geocentric.hpp>

GeographicLib::Geocentric * lua_checkGeocentric(lua_State *L, int narg);
extern "C" int luaopen_Geocentric(lua_State *L);

#endif
