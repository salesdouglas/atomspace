# Install script for directory: /root/OPENCOG/atomspace/opencog/truthvalue

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libtruthvalue.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libtruthvalue.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libtruthvalue.so"
         RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/opencog" TYPE SHARED_LIBRARY FILES "/root/OPENCOG/atomspace/build/opencog/truthvalue/libtruthvalue.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libtruthvalue.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libtruthvalue.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libtruthvalue.so"
         OLD_RPATH "/usr/local/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/usr/local/lib/opencog:lib/python3.5/dist-packages/opencog:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/opencog/libtruthvalue.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencog/truthvalue" TYPE FILE FILES
    "/root/OPENCOG/atomspace/opencog/truthvalue/AttentionValue.h"
    "/root/OPENCOG/atomspace/opencog/truthvalue/CountTruthValue.h"
    "/root/OPENCOG/atomspace/opencog/truthvalue/FuzzyTruthValue.h"
    "/root/OPENCOG/atomspace/opencog/truthvalue/IndefiniteTruthValue.h"
    "/root/OPENCOG/atomspace/opencog/truthvalue/ProbabilisticTruthValue.h"
    "/root/OPENCOG/atomspace/opencog/truthvalue/SimpleTruthValue.h"
    "/root/OPENCOG/atomspace/opencog/truthvalue/EvidenceCountTruthValue.h"
    "/root/OPENCOG/atomspace/opencog/truthvalue/TruthValue.h"
    )
endif()

