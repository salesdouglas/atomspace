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
include examples/c++-api/CMakeFiles/ureexample.dir/depend.make

# Include the progress variables for this target.
include examples/c++-api/CMakeFiles/ureexample.dir/progress.make

# Include the compile flags for this target's objects.
include examples/c++-api/CMakeFiles/ureexample.dir/flags.make

examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o: examples/c++-api/CMakeFiles/ureexample.dir/flags.make
examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o: ../examples/c++-api/UREExample.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o"
	cd /root/OPENCOG/atomspace/build/examples/c++-api && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ureexample.dir/UREExample.cc.o -c /root/OPENCOG/atomspace/examples/c++-api/UREExample.cc

examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ureexample.dir/UREExample.cc.i"
	cd /root/OPENCOG/atomspace/build/examples/c++-api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/examples/c++-api/UREExample.cc > CMakeFiles/ureexample.dir/UREExample.cc.i

examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ureexample.dir/UREExample.cc.s"
	cd /root/OPENCOG/atomspace/build/examples/c++-api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/examples/c++-api/UREExample.cc -o CMakeFiles/ureexample.dir/UREExample.cc.s

examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o.requires:

.PHONY : examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o.requires

examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o.provides: examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o.requires
	$(MAKE) -f examples/c++-api/CMakeFiles/ureexample.dir/build.make examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o.provides.build
.PHONY : examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o.provides

examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o.provides.build: examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o


# Object files for target ureexample
ureexample_OBJECTS = \
"CMakeFiles/ureexample.dir/UREExample.cc.o"

# External object files for target ureexample
ureexample_EXTERNAL_OBJECTS =

examples/c++-api/ureexample: examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o
examples/c++-api/ureexample: examples/c++-api/CMakeFiles/ureexample.dir/build.make
examples/c++-api/ureexample: /usr/local/lib/libcogutil.so
examples/c++-api/ureexample: opencog/rule-engine/libruleengine.so
examples/c++-api/ureexample: opencog/atoms/execution/libexecution.so
examples/c++-api/ureexample: opencog/query/libquery.so
examples/c++-api/ureexample: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/c++-api/ureexample: opencog/cython/libPythonEval.so
examples/c++-api/ureexample: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/c++-api/ureexample: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
examples/c++-api/ureexample: opencog/atomspaceutils/libatomspaceutils.so
examples/c++-api/ureexample: opencog/unify/libunify.so
examples/c++-api/ureexample: opencog/guile/libsmob.so
examples/c++-api/ureexample: opencog/atoms/pattern/liblambda.so
examples/c++-api/ureexample: opencog/atomspace/libatomspace.so
examples/c++-api/ureexample: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/c++-api/ureexample: opencog/atoms/reduct/libclearbox.so
examples/c++-api/ureexample: opencog/atoms/core/libatomcore.so
examples/c++-api/ureexample: opencog/atomutils/libatomutils.so
examples/c++-api/ureexample: opencog/atoms/base/libatombase.so
examples/c++-api/ureexample: opencog/truthvalue/libtruthvalue.so
examples/c++-api/ureexample: opencog/atoms/proto/libatomproto.so
examples/c++-api/ureexample: /usr/local/lib/libguile-2.2.so
examples/c++-api/ureexample: /usr/local/lib/libcogutil.so
examples/c++-api/ureexample: examples/c++-api/CMakeFiles/ureexample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ureexample"
	cd /root/OPENCOG/atomspace/build/examples/c++-api && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ureexample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/c++-api/CMakeFiles/ureexample.dir/build: examples/c++-api/ureexample

.PHONY : examples/c++-api/CMakeFiles/ureexample.dir/build

examples/c++-api/CMakeFiles/ureexample.dir/requires: examples/c++-api/CMakeFiles/ureexample.dir/UREExample.cc.o.requires

.PHONY : examples/c++-api/CMakeFiles/ureexample.dir/requires

examples/c++-api/CMakeFiles/ureexample.dir/clean:
	cd /root/OPENCOG/atomspace/build/examples/c++-api && $(CMAKE_COMMAND) -P CMakeFiles/ureexample.dir/cmake_clean.cmake
.PHONY : examples/c++-api/CMakeFiles/ureexample.dir/clean

examples/c++-api/CMakeFiles/ureexample.dir/depend:
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/examples/c++-api /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/examples/c++-api /root/OPENCOG/atomspace/build/examples/c++-api/CMakeFiles/ureexample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/c++-api/CMakeFiles/ureexample.dir/depend
