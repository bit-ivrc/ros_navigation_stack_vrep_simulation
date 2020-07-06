function indentSpace(indent)
  local str = ''
  for i = 1, indent do
    str = str..'  '
  end
  return str
end




local filePath = './'
function clasGenerate(className, classFunction, classMethod)
  -- Generate Header
  local headFileName = 'lua_'..className..'.hpp'
  headFileName = filePath..headFileName
  
  local head = io.open(headFileName, 'w')
  head:write('#ifndef __LUA'..className:upper()..'_H__\n')
  head:write('#define __LUA'..className:upper()..'_H__\n')
  
  --for i = 1, #classFunction do
  --  head:write(indentSpace(1)..'static int '..
  --      'lua_'..className..'_'..classFunction[i]..
  --      '(lua_State *L);\n')
  --end
  
  head:write('\n')
  head:write(indentSpace(1)..'extern \"C\" int luaopen_'..className..
        '(lua_State *L);\n')
  
  
  head:write('#endif\n')
  head:close()
  
  -- Geenrate Source
  local metaFileName = 'lua_'..className..'.cpp'
  metaFileName = filePath..metaFileName
  local meta = io.open(metaFileName, 'w')
  meta:write(
  "extern \"C\" {\n"..
  indentSpace(1).."#include \"lua.h\"\n"..
  indentSpace(1).."#include \"lualib.h\"\n"..
  indentSpace(1).."#include \"lauxlib.h\"\n"..
  "}\n\n"..
  "#include <exception>\n"..
  "#include <GeographicLib/"..className..".hpp>\n"
  )
  meta:write('\n\n')
  meta:write('using namespace std;\n')
  meta:write('using namespace GeographicLib;\n')
  meta:write('\n\n')
  for i = 1, #classFunction do
  meta:write('static int lua_'..className..'_'..classFunction[i]..
              '(lua_State *L) {\n')
  meta:write(indentSpace(1)..'try {\n')
  meta:write(indentSpace(1)..'}\n')
  meta:write(indentSpace(1)..'catch (exception& e) {\n')
  meta:write(indentSpace(2)..'luaL_error(L, \"Caught exception\");\n')
  meta:write(indentSpace(1)..'}\n')
  meta:write(indentSpace(1)..'return 1;\n')
  meta:write('}\n\n')
  end

  for i = 1, #classMethod do
  meta:write('static int lua_'..className..'_'..classMethod[i]..
              '(lua_State *L) {\n')
  meta:write(indentSpace(1)..'try {\n')
  meta:write(indentSpace(1)..'}\n')
  meta:write(indentSpace(1)..'catch (exception& e) {\n')
  meta:write(indentSpace(2)..'luaL_error(L, \"Caught exception\");\n')
  meta:write(indentSpace(1)..'}\n')
  meta:write(indentSpace(1)..'return 1;\n')
  meta:write('}\n\n')
  end

  
  -- lua method
  meta:write('static const struct luaL_reg '..className..
              '_Methods [] = {\n')
  for i = 1, #classMethod do
    meta:write(indentSpace(1)..'{\"'..classMethod[i]..
                '\", lua_'..className..'_'..classMethod[i]..'},\n')
  end
  meta:write(indentSpace(1)..'{NULL, NULL}\n')
  meta:write('};\n\n')
  
  -- lua function
  meta:write('static const struct luaL_reg '..className..
              '_Functions [] = {\n')
  for i = 1, #classFunction do
    meta:write(indentSpace(1)..'{\"'..classFunction[i]..
                '\", lua_'..className..'_'..classFunction[i]..'},\n')
  end
  meta:write(indentSpace(1)..'{NULL, NULL}\n')
  meta:write('};\n\n')
  
  -- luaopen
  meta:write('extern \"C\" int luaopen_'..className..
        '(lua_State *L) {\n')
  meta:write(indentSpace(1)..'luaL_register(L, NULL, '..className..'_Methods);\n')
  meta:write(indentSpace(1)..'luaL_register(L, \"'..className..
                              '\", '..className..'_Functions);\n')
  meta:write(indentSpace(1)..'return 1;\n')
  meta:write('}\n\n')
  
  
  
  meta:close()
end

local Name = "Constants"

local Function = {
'WGS84_a',
'WGS84_f'
}

local Method = {
}

clasGenerate(Name, Function, Method)

local Name = "Geocentric"

local Function = {
  'new'
}

local Method = {
  'Forward',
  'Reverse'
}

clasGenerate(Name, Function, Method)

local Name = "LocalCartesian"

local Function = {
}

local Method = {
}

clasGenerate(Name, Function, Method)
