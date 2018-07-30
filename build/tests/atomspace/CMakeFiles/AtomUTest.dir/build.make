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
include tests/atomspace/CMakeFiles/AtomUTest.dir/depend.make

# Include the progress variables for this target.
include tests/atomspace/CMakeFiles/AtomUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/atomspace/CMakeFiles/AtomUTest.dir/flags.make

tests/atomspace/AtomUTest.cpp: ../tests/atomspace/AtomUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating AtomUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/atomspace && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/atomspace/AtomUTest.cpp /root/OPENCOG/atomspace/tests/atomspace/AtomUTest.cxxtest

tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o: tests/atomspace/CMakeFiles/AtomUTest.dir/flags.make
tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o: tests/atomspace/AtomUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/atomspace && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/atomspace/AtomUTest.cpp

tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AtomUTest.dir/AtomUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/atomspace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/atomspace/AtomUTest.cpp > CMakeFiles/AtomUTest.dir/AtomUTest.cpp.i

tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AtomUTest.dir/AtomUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/atomspace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/atomspace/AtomUTest.cpp -o CMakeFiles/AtomUTest.dir/AtomUTest.cpp.s

tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o.requires:

.PHONY : tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o.requires

tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o.provides: tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o.requires
	$(MAKE) -f tests/atomspace/CMakeFiles/AtomUTest.dir/build.make tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o.provides.build
.PHONY : tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o.provides

tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o.provides.build: tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o


# Object files for target AtomUTest
AtomUTest_OBJECTS = \
"CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o"

# External object files for target AtomUTest
AtomUTest_EXTERNAL_OBJECTS =

tests/atomspace/AtomUTest: tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o
tests/atomspace/AtomUTest: tests/atomspace/CMakeFiles/AtomUTest.dir/build.make
tests/atomspace/AtomUTest: opencog/atomspaceutils/libatomspaceutils.so
tests/atomspace/AtomUTest: opencog/atomspace/libatomspace.so
tests/atomspace/AtomUTest: opencog/atoms/core/libatomcore.so
tests/atomspace/AtomUTest: opencog/atomutils/libatomutils.so
tests/atomspace/AtomUTest: opencog/atoms/base/libatombase.so
tests/atomspace/AtomUTest: opencog/atoms/proto/libatomproto.so
tests/atomspace/AtomUTest: opencog/truthvalue/libtruthvalue.so
tests/atomspace/AtomUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/atomspace/AtomUTest: /usr/local/lib/libcogutil.so
tests/atomspace/AtomUTest: tests/atomspace/CMakeFiles/AtomUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable AtomUTest"
	cd /root/OPENCOG/atomspace/build/tests/atomspace && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AtomUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/atomspace/CMakeFiles/AtomUTest.dir/build: tests/atomspace/AtomUTest

.PHONY : tests/atomspace/CMakeFiles/AtomUTest.dir/build

tests/atomspace/CMakeFiles/AtomUTest.dir/requires: tests/atomspace/CMakeFiles/AtomUTest.dir/AtomUTest.cpp.o.requires

.PHONY : tests/atomspace/CMakeFiles/AtomUTest.dir/requires

tests/atomspace/CMakeFiles/AtomUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/atomspace && $(CMAKE_COMMAND) -P CMakeFiles/AtomUTest.dir/cmake_clean.cmake
.PHONY : tests/atomspace/CMakeFiles/AtomUTest.dir/clean

tests/atomspace/CMakeFiles/AtomUTest.dir/depend: tests/atomspace/AtomUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/atomspace /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/atomspace /root/OPENCOG/atomspace/build/tests/atomspace/CMakeFiles/AtomUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/atomspace/CMakeFiles/AtomUTest.dir/depend

