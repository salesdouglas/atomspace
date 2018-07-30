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
include tests/truthvalue/CMakeFiles/TVMergeUTest.dir/depend.make

# Include the progress variables for this target.
include tests/truthvalue/CMakeFiles/TVMergeUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/truthvalue/CMakeFiles/TVMergeUTest.dir/flags.make

tests/truthvalue/TVMergeUTest.cpp: ../tests/truthvalue/TVMergeUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating TVMergeUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/truthvalue && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/truthvalue/TVMergeUTest.cpp /root/OPENCOG/atomspace/tests/truthvalue/TVMergeUTest.cxxtest

tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o: tests/truthvalue/CMakeFiles/TVMergeUTest.dir/flags.make
tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o: tests/truthvalue/TVMergeUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/truthvalue && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/truthvalue/TVMergeUTest.cpp

tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/truthvalue/TVMergeUTest.cpp > CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.i

tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/truthvalue/TVMergeUTest.cpp -o CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.s

tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o.requires:

.PHONY : tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o.requires

tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o.provides: tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o.requires
	$(MAKE) -f tests/truthvalue/CMakeFiles/TVMergeUTest.dir/build.make tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o.provides.build
.PHONY : tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o.provides

tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o.provides.build: tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o


# Object files for target TVMergeUTest
TVMergeUTest_OBJECTS = \
"CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o"

# External object files for target TVMergeUTest
TVMergeUTest_EXTERNAL_OBJECTS =

tests/truthvalue/TVMergeUTest: tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o
tests/truthvalue/TVMergeUTest: tests/truthvalue/CMakeFiles/TVMergeUTest.dir/build.make
tests/truthvalue/TVMergeUTest: opencog/atomspace/libatomspace.so
tests/truthvalue/TVMergeUTest: opencog/atoms/core/libatomcore.so
tests/truthvalue/TVMergeUTest: opencog/atomutils/libatomutils.so
tests/truthvalue/TVMergeUTest: opencog/atoms/base/libatombase.so
tests/truthvalue/TVMergeUTest: opencog/atoms/proto/libatomproto.so
tests/truthvalue/TVMergeUTest: opencog/truthvalue/libtruthvalue.so
tests/truthvalue/TVMergeUTest: /usr/local/lib/libcogutil.so
tests/truthvalue/TVMergeUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/truthvalue/TVMergeUTest: tests/truthvalue/CMakeFiles/TVMergeUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable TVMergeUTest"
	cd /root/OPENCOG/atomspace/build/tests/truthvalue && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TVMergeUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/truthvalue/CMakeFiles/TVMergeUTest.dir/build: tests/truthvalue/TVMergeUTest

.PHONY : tests/truthvalue/CMakeFiles/TVMergeUTest.dir/build

tests/truthvalue/CMakeFiles/TVMergeUTest.dir/requires: tests/truthvalue/CMakeFiles/TVMergeUTest.dir/TVMergeUTest.cpp.o.requires

.PHONY : tests/truthvalue/CMakeFiles/TVMergeUTest.dir/requires

tests/truthvalue/CMakeFiles/TVMergeUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/truthvalue && $(CMAKE_COMMAND) -P CMakeFiles/TVMergeUTest.dir/cmake_clean.cmake
.PHONY : tests/truthvalue/CMakeFiles/TVMergeUTest.dir/clean

tests/truthvalue/CMakeFiles/TVMergeUTest.dir/depend: tests/truthvalue/TVMergeUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/truthvalue /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/truthvalue /root/OPENCOG/atomspace/build/tests/truthvalue/CMakeFiles/TVMergeUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/truthvalue/CMakeFiles/TVMergeUTest.dir/depend

