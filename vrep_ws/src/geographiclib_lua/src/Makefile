CXX=g++
LD=g++
CXXFLAGS=-O2 -fpic
LIBOPTS=-shared -fpic
SHLIBEXT=so

# Includes and library directories
INCLUDES=-I/usr/local/include -I/usr/include
LIB_DIR=-L/usr/local/lib -L/usr/lib

# Find both Lua and LuaJit
ifeq ($(shell pkg-config --exists luajit && echo 0),0)
  LUAJIT_INC=`pkg-config luajit --cflags`
  LUAJIT_LIB=`pkg-config luajit --libs`
endif
ifeq ($(shell pkg-config --exists lua5.1 && echo 0),0)
  LUA_INC=`pkg-config lua5.1 --cflags`
  LUA_LIB=`pkg-config lua5.1 --libs`
else
  LUA_INC=`pkg-config lua --cflags`
  LUA_LIB=`pkg-config lua --libs`
endif

ifdef LUAJIT_INC
INCLUDES+=$(LUAJIT_INC)
LIBOPTS+=$(LUAJIT_LIB)
else
ifdef LUA_INC
INCLUDES+=$(LUA_INC)
LIBOPTS+=$(LUA_LIB)
else
#BAD
endif
endif

OBJECTS = \
				 lua_Geocentric.o  \
				 lua_Constants.o  \
				 lua_LocalCartesian.o  \
				 lua_GeographicLib.o

all: GeographicLib 

%.o: %.cpp
	@echo "\t" CXX $@
	@$(CXX) $(CXXFLAGS) $(INCLUDES) -o $@ -c $<

GeographicLib: $(OBJECTS)
	$(LD) $(LDFLAGS) -o $@.$(SHLIBEXT) $^ $(LIB_DIR) $(LIBOPTS) -lGeographic

clean:
	rm -f *.so *.o 
