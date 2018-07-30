# Install script for directory: /root/OPENCOG/atomspace/opencog/atoms/core

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libatomcore.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libatomcore.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libatomcore.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/atoms/core/libatomcore.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libatomcore.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libatomcore.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libatomcore.so"
         OLD_RPATH "/root/OPENCOG/atomspace/build/opencog/atomutils:/root/OPENCOG/atomspace/build/opencog/atoms/base:/usr/local/lib:/root/OPENCOG/atomspace/build/opencog/atoms/proto:/root/OPENCOG/atomspace/build/opencog/truthvalue:"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libatomcore.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencog/atoms/core" TYPE FILE FILES
    "/root/OPENCOG/atomspace/opencog/atoms/core/ArityLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/Context.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/DefineLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/DeleteLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/FreeLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/FunctionLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/LambdaLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/NumberNode.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/PrenexLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/PresentLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/PutLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/Quotation.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/RandomChoice.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/RandomNumber.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/RewriteLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/ScopeLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/SleepLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/StateLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/TimeLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/TruthValueOfLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/TypedAtomLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/TypeNode.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/UniqueLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/UnorderedLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/ValueOfLink.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/Variables.h"
    "/root/OPENCOG/atomspace/opencog/atoms/core/VariableList.h"
    )
endif()

