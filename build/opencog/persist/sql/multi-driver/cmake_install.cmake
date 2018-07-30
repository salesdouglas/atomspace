# Install script for directory: /root/OPENCOG/atomspace/opencog/persist/sql/multi-driver

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-odbc.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-odbc.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-odbc.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/persist/sql/multi-driver/libpersist-odbc.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-odbc.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-odbc.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-odbc.so"
         OLD_RPATH "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-odbc.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-pg.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-pg.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-pg.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/persist/sql/multi-driver/libpersist-pg.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-pg.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-pg.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-pg.so"
         OLD_RPATH "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-pg.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-sql.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-sql.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-sql.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/persist/sql/multi-driver/libpersist-sql.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-sql.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-sql.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-sql.so"
         OLD_RPATH "/root/OPENCOG/atomspace/build/opencog/persist/sql:/root/OPENCOG/atomspace/build/opencog/atomspaceutils:/root/OPENCOG/atomspace/build/opencog/guile:/root/OPENCOG/atomspace/build/opencog/persist/sql/multi-driver:/root/OPENCOG/atomspace/build/opencog/atoms/reduct:/root/OPENCOG/atomspace/build/opencog/atoms/pattern:/root/OPENCOG/atomspace/build/opencog/atomspace:/root/OPENCOG/atomspace/build/opencog/atoms/core:/root/OPENCOG/atomspace/build/opencog/atomutils:/root/OPENCOG/atomspace/build/opencog/atoms/base:/root/OPENCOG/atomspace/build/opencog/truthvalue:/root/OPENCOG/atomspace/build/opencog/atoms/proto:/usr/local/lib:"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libpersist-sql.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencog/persist/sql/multi-driver" TYPE FILE FILES
    "/root/OPENCOG/atomspace/opencog/persist/sql/multi-driver/llapi.h"
    "/root/OPENCOG/atomspace/opencog/persist/sql/multi-driver/SQLAtomStorage.h"
    "/root/OPENCOG/atomspace/opencog/persist/sql/multi-driver/SQLPersistSCM.h"
    )
endif()

