cmake_minimum_required(VERSION 2.8.8 FATAL_ERROR)
cmake_policy(VERSION 2.8.8)

list(APPEND my_include_dirs
  "${CMAKE_CURRENT_LIST_DIR}"
  )

##################################################################################################
#lua5.3\lua5.3.gyp:lua5.3#target
set(my_target "lua5.3")
set(TARGET ${my_target})
set(TOOLSET "target")

list(APPEND my_srcs
  src/lapi.c
src/lapi.h
src/lauxlib.c
src/lauxlib.h
src/lbaselib.c
src/lbitlib.c
src/lcode.c
src/lcode.h
src/lcorolib.c
src/lctype.c
src/lctype.h
src/ldblib.c
src/ldebug.c
src/ldebug.h
src/ldo.c
src/ldo.h
src/ldump.c
src/lfunc.c
src/lfunc.h
src/lgc.c
src/lgc.h
src/linit.c
src/liolib.c
src/llex.c
src/llex.h
src/llimits.h
src/lmathlib.c
src/lmem.c
src/lmem.h
src/loadlib.c
src/lobject.c
src/lobject.h
src/lopcodes.c
src/lopcodes.h
src/loslib.c
src/lparser.c
src/lparser.h
src/lprefix.h
src/lstate.c
src/lstate.h
src/lstring.c
src/lstring.h
src/lstrlib.c
src/ltable.c
src/ltable.h
src/ltablib.c
src/ltm.c
src/ltm.h
#src/lua.c
src/lua.h
src/lua.hpp
#src/luac.c
src/luaconf.h
src/lualib.h
src/lundump.c
src/lundump.h
src/lutf8lib.c
src/lvm.c
src/lvm.h
src/lzio.c
src/lzio.h
  )
add_library(${my_target} SHARED ${my_srcs} )
set_property(TARGET ${my_target} APPEND PROPERTY INCLUDE_DIRECTORIES ${my_include_dirs})
target_compile_definitions(${my_target}
  PUBLIC LUA_BUILD_AS_DLL=1
)

unset(TOOLSET)
unset(TARGET)
unset(my_srcs)
unset(my_target)





