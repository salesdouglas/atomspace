# Install script for directory: /root/OPENCOG/atomspace/opencog/guile

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libsmob.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libsmob.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libsmob.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/guile/libsmob.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libsmob.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libsmob.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libsmob.so"
         OLD_RPATH "/root/OPENCOG/atomspace/build/opencog/atoms/reduct:/root/OPENCOG/atomspace/build/opencog/atoms/pattern:/root/OPENCOG/atomspace/build/opencog/atomspace:/usr/local/lib:/root/OPENCOG/atomspace/build/opencog/atoms/core:/root/OPENCOG/atomspace/build/opencog/atomutils:/root/OPENCOG/atomspace/build/opencog/atoms/base:/root/OPENCOG/atomspace/build/opencog/truthvalue:/root/OPENCOG/atomspace/build/opencog/atoms/proto:"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libsmob.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/liblogger.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/liblogger.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/liblogger.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/guile/liblogger.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/liblogger.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/liblogger.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/liblogger.so"
         OLD_RPATH "/root/OPENCOG/atomspace/build/opencog/rule-engine:/usr/local/lib:/root/OPENCOG/atomspace/build/opencog/atoms/execution:/root/OPENCOG/atomspace/build/opencog/query:/root/OPENCOG/atomspace/build/opencog/cython:/root/OPENCOG/atomspace/build/opencog/guile:/root/OPENCOG/atomspace/build/opencog/atoms/reduct:/root/OPENCOG/atomspace/build/opencog/atomspaceutils:/root/OPENCOG/atomspace/build/opencog/unify:/root/OPENCOG/atomspace/build/opencog/atoms/pattern:/root/OPENCOG/atomspace/build/opencog/atomspace:/root/OPENCOG/atomspace/build/opencog/atoms/core:/root/OPENCOG/atomspace/build/opencog/atomutils:/root/OPENCOG/atomspace/build/opencog/atoms/base:/root/OPENCOG/atomspace/build/opencog/truthvalue:/root/OPENCOG/atomspace/build/opencog/atoms/proto:"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/liblogger.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/librandgen.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/librandgen.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/librandgen.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/guile/librandgen.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/librandgen.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/librandgen.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/librandgen.so"
         OLD_RPATH "/root/OPENCOG/atomspace/build/opencog/guile:/usr/local/lib:/root/OPENCOG/atomspace/build/opencog/atoms/reduct:/root/OPENCOG/atomspace/build/opencog/atoms/pattern:/root/OPENCOG/atomspace/build/opencog/atomspace:/root/OPENCOG/atomspace/build/opencog/atoms/core:/root/OPENCOG/atomspace/build/opencog/atomutils:/root/OPENCOG/atomspace/build/opencog/atoms/base:/root/OPENCOG/atomspace/build/opencog/atoms/proto:/root/OPENCOG/atomspace/build/opencog/truthvalue:"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/librandgen.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencog/guile" TYPE FILE FILES
    "/root/OPENCOG/atomspace/opencog/guile/SchemeEval.h"
    "/root/OPENCOG/atomspace/opencog/guile/SchemeModule.h"
    "/root/OPENCOG/atomspace/opencog/guile/SchemePrimitive.h"
    "/root/OPENCOG/atomspace/opencog/guile/SchemeSmob.h"
    )
endif()

