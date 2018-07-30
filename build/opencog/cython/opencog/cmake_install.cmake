# Install script for directory: /root/OPENCOG/atomspace/opencog/cython/opencog

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencog/cython/opencog" TYPE FILE FILES
    "/root/OPENCOG/atomspace/opencog/cython/opencog/__init__.py"
    "/root/OPENCOG/atomspace/opencog/cython/opencog/atomspace.pxd"
    "/root/OPENCOG/atomspace/opencog/cython/opencog/Cast.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/atomspace.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/atomspace.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/atomspace.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/cython/opencog/atomspace.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/atomspace.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/atomspace.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/atomspace.so"
         OLD_RPATH "/root/OPENCOG/atomspace/build/opencog/attentionbank:/root/OPENCOG/atomspace/build/opencog/atoms/execution:/root/OPENCOG/atomspace/build/opencog/atomspaceutils:/usr/local/lib:/root/OPENCOG/atomspace/build/opencog/cython:/root/OPENCOG/atomspace/build/opencog/query:/root/OPENCOG/atomspace/build/opencog/guile:/root/OPENCOG/atomspace/build/opencog/atoms/reduct:/root/OPENCOG/atomspace/build/opencog/atoms/pattern:/root/OPENCOG/atomspace/build/opencog/atomspace:/root/OPENCOG/atomspace/build/opencog/atoms/core:/root/OPENCOG/atomspace/build/opencog/atomutils:/root/OPENCOG/atomspace/build/opencog/atoms/base:/root/OPENCOG/atomspace/build/opencog/truthvalue:/root/OPENCOG/atomspace/build/opencog/atoms/proto:"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/atomspace.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/bindlink.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/bindlink.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/bindlink.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/cython/opencog/bindlink.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/bindlink.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/bindlink.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/bindlink.so"
         OLD_RPATH "/root/OPENCOG/atomspace/build/opencog/cython/opencog:/root/OPENCOG/atomspace/build/opencog/attentionbank:/root/OPENCOG/atomspace/build/opencog/atoms/execution:/root/OPENCOG/atomspace/build/opencog/query:/root/OPENCOG/atomspace/build/opencog/cython:/root/OPENCOG/atomspace/build/opencog/guile:/root/OPENCOG/atomspace/build/opencog/atoms/pattern:/usr/local/lib:/root/OPENCOG/atomspace/build/opencog/atoms/reduct:/root/OPENCOG/atomspace/build/opencog/atomspaceutils:/root/OPENCOG/atomspace/build/opencog/atomspace:/root/OPENCOG/atomspace/build/opencog/atoms/core:/root/OPENCOG/atomspace/build/opencog/atomutils:/root/OPENCOG/atomspace/build/opencog/atoms/base:/root/OPENCOG/atomspace/build/opencog/truthvalue:/root/OPENCOG/atomspace/build/opencog/atoms/proto:"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/bindlink.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/logger.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/logger.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/logger.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/cython/opencog/logger.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/logger.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/logger.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/logger.so"
         OLD_RPATH "/usr/local/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/logger.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/type_constructors.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/type_constructors.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/type_constructors.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/cython/opencog/type_constructors.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/type_constructors.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/type_constructors.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/type_constructors.so"
         OLD_RPATH "/root/OPENCOG/atomspace/build/opencog/atomspace:/root/OPENCOG/atomspace/build/opencog/atoms/core:/root/OPENCOG/atomspace/build/opencog/atomutils:/root/OPENCOG/atomspace/build/opencog/atoms/base:/root/OPENCOG/atomspace/build/opencog/atoms/proto:/root/OPENCOG/atomspace/build/opencog/truthvalue:/usr/local/lib:"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/type_constructors.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/utilities.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/utilities.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/utilities.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/cython/opencog/utilities.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/utilities.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/utilities.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/utilities.so"
         OLD_RPATH "/root/OPENCOG/atomspace/build/opencog/cython:/root/OPENCOG/atomspace/build/opencog/cython/opencog:/usr/local/lib:/root/OPENCOG/atomspace/build/opencog/guile:/root/OPENCOG/atomspace/build/opencog/atoms/reduct:/root/OPENCOG/atomspace/build/opencog/atoms/pattern:/root/OPENCOG/atomspace/build/opencog/atomspace:/root/OPENCOG/atomspace/build/opencog/atoms/core:/root/OPENCOG/atomspace/build/opencog/atomutils:/root/OPENCOG/atomspace/build/opencog/atoms/base:/root/OPENCOG/atomspace/build/opencog/atoms/proto:/root/OPENCOG/atomspace/build/opencog/truthvalue:"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/utilities.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/scheme_wrapper.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/scheme_wrapper.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/scheme_wrapper.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/cython/opencog/scheme_wrapper.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/scheme_wrapper.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/scheme_wrapper.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/scheme_wrapper.so"
         OLD_RPATH "/root/OPENCOG/atomspace/build/opencog/cython/opencog:/root/OPENCOG/atomspace/build/opencog/attentionbank:/root/OPENCOG/atomspace/build/opencog/atoms/execution:/root/OPENCOG/atomspace/build/opencog/query:/root/OPENCOG/atomspace/build/opencog/cython:/root/OPENCOG/atomspace/build/opencog/guile:/root/OPENCOG/atomspace/build/opencog/atoms/pattern:/usr/local/lib:/root/OPENCOG/atomspace/build/opencog/atoms/reduct:/root/OPENCOG/atomspace/build/opencog/atomspaceutils:/root/OPENCOG/atomspace/build/opencog/atomspace:/root/OPENCOG/atomspace/build/opencog/atoms/core:/root/OPENCOG/atomspace/build/opencog/atomutils:/root/OPENCOG/atomspace/build/opencog/atoms/base:/root/OPENCOG/atomspace/build/opencog/truthvalue:/root/OPENCOG/atomspace/build/opencog/atoms/proto:"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog/scheme_wrapper.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.5/dist-packages/opencog" TYPE FILE FILES "/root/OPENCOG/atomspace/opencog/cython/opencog/__init__.py")
endif()

