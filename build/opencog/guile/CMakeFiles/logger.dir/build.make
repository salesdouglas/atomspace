# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/OPENCOG/atomspace

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/OPENCOG/atomspace/build

# Include any dependencies generated for this target.
include opencog/guile/CMakeFiles/logger.dir/depend.make

# Include the progress variables for this target.
include opencog/guile/CMakeFiles/logger.dir/progress.make

# Include the compile flags for this target's objects.
include opencog/guile/CMakeFiles/logger.dir/flags.make

opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o: opencog/guile/CMakeFiles/logger.dir/flags.make
opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o: ../opencog/guile/LoggerSCM.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/guile && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/logger.dir/LoggerSCM.cc.o -c /root/OPENCOG/atomspace/opencog/guile/LoggerSCM.cc

opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/logger.dir/LoggerSCM.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/guile && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/guile/LoggerSCM.cc > CMakeFiles/logger.dir/LoggerSCM.cc.i

opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/logger.dir/LoggerSCM.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/guile && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/guile/LoggerSCM.cc -o CMakeFiles/logger.dir/LoggerSCM.cc.s

opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o.requires:

.PHONY : opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o.requires

opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o.provides: opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o.requires
	$(MAKE) -f opencog/guile/CMakeFiles/logger.dir/build.make opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o.provides.build
.PHONY : opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o.provides

opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o.provides.build: opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o


# Object files for target logger
logger_OBJECTS = \
"CMakeFiles/logger.dir/LoggerSCM.cc.o"

# External object files for target logger
logger_EXTERNAL_OBJECTS =

opencog/guile/liblogger.so: opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o
opencog/guile/liblogger.so: opencog/guile/CMakeFiles/logger.dir/build.make
opencog/guile/liblogger.so: opencog/rule-engine/libruleengine.so
opencog/guile/liblogger.so: /usr/local/lib/libguile-2.2.so
opencog/guile/liblogger.so: /usr/local/lib/libcogutil.so
opencog/guile/liblogger.so: opencog/atoms/execution/libexecution.so
opencog/guile/liblogger.so: opencog/query/libquery.so
opencog/guile/liblogger.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
opencog/guile/liblogger.so: opencog/cython/libPythonEval.so
opencog/guile/liblogger.so: opencog/guile/libsmob.so
opencog/guile/liblogger.so: /usr/local/lib/libguile-2.2.so
opencog/guile/liblogger.so: opencog/atoms/reduct/libclearbox.so
opencog/guile/liblogger.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
opencog/guile/liblogger.so: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
opencog/guile/liblogger.so: opencog/atomspaceutils/libatomspaceutils.so
opencog/guile/liblogger.so: opencog/unify/libunify.so
opencog/guile/liblogger.so: opencog/atoms/pattern/liblambda.so
opencog/guile/liblogger.so: opencog/atomspace/libatomspace.so
opencog/guile/liblogger.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
opencog/guile/liblogger.so: opencog/atoms/core/libatomcore.so
opencog/guile/liblogger.so: opencog/atomutils/libatomutils.so
opencog/guile/liblogger.so: opencog/atoms/base/libatombase.so
opencog/guile/liblogger.so: opencog/truthvalue/libtruthvalue.so
opencog/guile/liblogger.so: opencog/atoms/proto/libatomproto.so
opencog/guile/liblogger.so: /usr/local/lib/libcogutil.so
opencog/guile/liblogger.so: opencog/guile/CMakeFiles/logger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library liblogger.so"
	cd /root/OPENCOG/atomspace/build/opencog/guile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/logger.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencog/guile/CMakeFiles/logger.dir/build: opencog/guile/liblogger.so

.PHONY : opencog/guile/CMakeFiles/logger.dir/build

opencog/guile/CMakeFiles/logger.dir/requires: opencog/guile/CMakeFiles/logger.dir/LoggerSCM.cc.o.requires

.PHONY : opencog/guile/CMakeFiles/logger.dir/requires

opencog/guile/CMakeFiles/logger.dir/clean:
	cd /root/OPENCOG/atomspace/build/opencog/guile && $(CMAKE_COMMAND) -P CMakeFiles/logger.dir/cmake_clean.cmake
.PHONY : opencog/guile/CMakeFiles/logger.dir/clean

opencog/guile/CMakeFiles/logger.dir/depend:
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/opencog/guile /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/opencog/guile /root/OPENCOG/atomspace/build/opencog/guile/CMakeFiles/logger.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencog/guile/CMakeFiles/logger.dir/depend

