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
include examples/c++-guile/CMakeFiles/PrimitiveExample.dir/depend.make

# Include the progress variables for this target.
include examples/c++-guile/CMakeFiles/PrimitiveExample.dir/progress.make

# Include the compile flags for this target's objects.
include examples/c++-guile/CMakeFiles/PrimitiveExample.dir/flags.make

examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o: examples/c++-guile/CMakeFiles/PrimitiveExample.dir/flags.make
examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o: ../examples/c++-guile/PrimitiveExample.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o"
	cd /root/OPENCOG/atomspace/build/examples/c++-guile && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o -c /root/OPENCOG/atomspace/examples/c++-guile/PrimitiveExample.cc

examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.i"
	cd /root/OPENCOG/atomspace/build/examples/c++-guile && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/examples/c++-guile/PrimitiveExample.cc > CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.i

examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.s"
	cd /root/OPENCOG/atomspace/build/examples/c++-guile && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/examples/c++-guile/PrimitiveExample.cc -o CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.s

examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o.requires:

.PHONY : examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o.requires

examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o.provides: examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o.requires
	$(MAKE) -f examples/c++-guile/CMakeFiles/PrimitiveExample.dir/build.make examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o.provides.build
.PHONY : examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o.provides

examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o.provides.build: examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o


# Object files for target PrimitiveExample
PrimitiveExample_OBJECTS = \
"CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o"

# External object files for target PrimitiveExample
PrimitiveExample_EXTERNAL_OBJECTS =

examples/c++-guile/PrimitiveExample: examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o
examples/c++-guile/PrimitiveExample: examples/c++-guile/CMakeFiles/PrimitiveExample.dir/build.make
examples/c++-guile/PrimitiveExample: opencog/guile/libsmob.so
examples/c++-guile/PrimitiveExample: opencog/atoms/reduct/libclearbox.so
examples/c++-guile/PrimitiveExample: opencog/atoms/pattern/liblambda.so
examples/c++-guile/PrimitiveExample: opencog/atomspace/libatomspace.so
examples/c++-guile/PrimitiveExample: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/c++-guile/PrimitiveExample: opencog/atoms/core/libatomcore.so
examples/c++-guile/PrimitiveExample: opencog/atomutils/libatomutils.so
examples/c++-guile/PrimitiveExample: opencog/atoms/base/libatombase.so
examples/c++-guile/PrimitiveExample: opencog/atoms/proto/libatomproto.so
examples/c++-guile/PrimitiveExample: opencog/truthvalue/libtruthvalue.so
examples/c++-guile/PrimitiveExample: /usr/local/lib/libguile-2.2.so
examples/c++-guile/PrimitiveExample: /usr/local/lib/libcogutil.so
examples/c++-guile/PrimitiveExample: examples/c++-guile/CMakeFiles/PrimitiveExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PrimitiveExample"
	cd /root/OPENCOG/atomspace/build/examples/c++-guile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PrimitiveExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/c++-guile/CMakeFiles/PrimitiveExample.dir/build: examples/c++-guile/PrimitiveExample

.PHONY : examples/c++-guile/CMakeFiles/PrimitiveExample.dir/build

examples/c++-guile/CMakeFiles/PrimitiveExample.dir/requires: examples/c++-guile/CMakeFiles/PrimitiveExample.dir/PrimitiveExample.cc.o.requires

.PHONY : examples/c++-guile/CMakeFiles/PrimitiveExample.dir/requires

examples/c++-guile/CMakeFiles/PrimitiveExample.dir/clean:
	cd /root/OPENCOG/atomspace/build/examples/c++-guile && $(CMAKE_COMMAND) -P CMakeFiles/PrimitiveExample.dir/cmake_clean.cmake
.PHONY : examples/c++-guile/CMakeFiles/PrimitiveExample.dir/clean

examples/c++-guile/CMakeFiles/PrimitiveExample.dir/depend:
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/examples/c++-guile /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/examples/c++-guile /root/OPENCOG/atomspace/build/examples/c++-guile/CMakeFiles/PrimitiveExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/c++-guile/CMakeFiles/PrimitiveExample.dir/depend

