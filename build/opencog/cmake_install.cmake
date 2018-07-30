# Install script for directory: /root/OPENCOG/atomspace/opencog

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/OPENCOG/atomspace/build/opencog/atoms/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/atomspace/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/atomspaceutils/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/atomutils/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/attentionbank/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/eval/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/query/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/persist/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/rule-engine/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/truthvalue/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/unify/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/guile/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/scm/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/matrix/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/sheaf/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/cython/cmake_install.cmake")
  include("/root/OPENCOG/atomspace/build/opencog/haskell/cmake_install.cmake")

endif()

