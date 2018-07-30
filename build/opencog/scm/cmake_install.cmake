# Install script for directory: /root/OPENCOG/atomspace/opencog/scm

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
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/opencog/scm/opencog.scm")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/opencog/scm" TYPE FILE FILES "/root/OPENCOG/atomspace/opencog/scm/opencog.scm")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  EXECUTE_PROCESS(
		COMMAND /usr/bin/cmake -E make_directory
		"/usr/share/guile/site/2.0"
		COMMAND /usr/bin/cmake -E create_symlink "/usr/local/share/opencog/scm/opencog.scm" "/usr/share/guile/site/2.0/opencog.scm"
		COMMAND /usr/bin/cmake -E make_directory "/usr/local/share/guile/site/2.2"
		COMMAND /usr/bin/cmake -E create_symlink "/usr/local/share/opencog/scm/opencog.scm" "/usr/local/share/guile/site/2.2/opencog.scm"
	)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/opencog/scm/opencog/base/apply.scm;/usr/local/share/opencog/scm/opencog/base/atom-cache.scm;/usr/local/share/opencog/scm/opencog/base/core-docs.scm;/usr/local/share/opencog/scm/opencog/base/debug-trace.scm;/usr/local/share/opencog/scm/opencog/base/file-utils.scm;/usr/local/share/opencog/scm/opencog/base/repl-shell.scm;/usr/local/share/opencog/scm/opencog/base/tv.scm;/usr/local/share/opencog/scm/opencog/base/utilities.scm")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/opencog/scm/opencog/base" TYPE FILE FILES
    "/root/OPENCOG/atomspace/opencog/scm/opencog/base/apply.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/base/atom-cache.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/base/core-docs.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/base/debug-trace.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/base/file-utils.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/base/repl-shell.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/base/tv.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/base/utilities.scm"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/opencog/scm/opencog/attention-bank.scm;/usr/local/share/opencog/scm/opencog/exec.scm;/usr/local/share/opencog/scm/opencog/extension.scm;/usr/local/share/opencog/scm/opencog/logger.scm;/usr/local/share/opencog/scm/opencog/randgen.scm;/usr/local/share/opencog/scm/opencog/persist.scm;/usr/local/share/opencog/scm/opencog/query.scm;/usr/local/share/opencog/scm/opencog/rule-engine.scm")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/opencog/scm/opencog" TYPE FILE FILES
    "/root/OPENCOG/atomspace/opencog/scm/opencog/attention-bank.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/exec.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/extension.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/logger.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/randgen.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/persist.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/query.scm"
    "/root/OPENCOG/atomspace/opencog/scm/opencog/rule-engine.scm"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  EXECUTE_PROCESS(
		COMMAND /usr/bin/cmake -E create_symlink "/usr/local/share/opencog/scm/opencog/" "/usr/share/guile/site/2.0/opencog"
		COMMAND /usr/bin/cmake -E create_symlink "/usr/local/share/opencog/scm/opencog/" "/usr/local/share/guile/site/2.2/opencog"
	)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/opencog/scm/opencog/dist-gearman.scm")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/opencog/scm/opencog" TYPE FILE FILES "/root/OPENCOG/atomspace/opencog/scm/opencog/dist-gearman.scm")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/opencog/scm/opencog/persist-sql.scm")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/opencog/scm/opencog" TYPE FILE FILES "/root/OPENCOG/atomspace/opencog/scm/opencog/persist-sql.scm")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/opencog/scm/opencog/python.scm")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/opencog/scm/opencog" TYPE FILE FILES "/root/OPENCOG/atomspace/opencog/scm/opencog/python.scm")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/opencog/scm/opencog/persist-zmq.scm")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/opencog/scm/opencog" TYPE FILE FILES "/root/OPENCOG/atomspace/opencog/scm/opencog/persist-zmq.scm")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/opencog/scm/opencog/rule-engine/rule-engine-utils.scm")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/opencog/scm/opencog/rule-engine" TYPE FILE FILES "/root/OPENCOG/atomspace/opencog/scm/opencog/rule-engine/rule-engine-utils.scm")
endif()

