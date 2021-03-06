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
include tests/atomspace/CMakeFiles/AtomTableUTest.dir/depend.make

# Include the progress variables for this target.
include tests/atomspace/CMakeFiles/AtomTableUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/atomspace/CMakeFiles/AtomTableUTest.dir/flags.make

tests/atomspace/AtomTableUTest.cpp: ../tests/atomspace/AtomTableUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating AtomTableUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/atomspace && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/atomspace/AtomTableUTest.cpp /root/OPENCOG/atomspace/tests/atomspace/AtomTableUTest.cxxtest

tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o: tests/atomspace/CMakeFiles/AtomTableUTest.dir/flags.make
tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o: tests/atomspace/AtomTableUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/atomspace && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/atomspace/AtomTableUTest.cpp

tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/atomspace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/atomspace/AtomTableUTest.cpp > CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.i

tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/atomspace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/atomspace/AtomTableUTest.cpp -o CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.s

tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o.requires:

.PHONY : tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o.requires

tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o.provides: tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o.requires
	$(MAKE) -f tests/atomspace/CMakeFiles/AtomTableUTest.dir/build.make tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o.provides.build
.PHONY : tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o.provides

tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o.provides.build: tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o


# Object files for target AtomTableUTest
AtomTableUTest_OBJECTS = \
"CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o"

# External object files for target AtomTableUTest
AtomTableUTest_EXTERNAL_OBJECTS =

tests/atomspace/AtomTableUTest: tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o
tests/atomspace/AtomTableUTest: tests/atomspace/CMakeFiles/AtomTableUTest.dir/build.make
tests/atomspace/AtomTableUTest: opencog/atomspaceutils/libatomspaceutils.so
tests/atomspace/AtomTableUTest: opencog/guile/libsmob.so
tests/atomspace/AtomTableUTest: opencog/atoms/reduct/libclearbox.so
tests/atomspace/AtomTableUTest: opencog/atoms/pattern/liblambda.so
tests/atomspace/AtomTableUTest: opencog/atomspace/libatomspace.so
tests/atomspace/AtomTableUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/atomspace/AtomTableUTest: opencog/atoms/core/libatomcore.so
tests/atomspace/AtomTableUTest: opencog/atomutils/libatomutils.so
tests/atomspace/AtomTableUTest: opencog/atoms/base/libatombase.so
tests/atomspace/AtomTableUTest: opencog/atoms/proto/libatomproto.so
tests/atomspace/AtomTableUTest: opencog/truthvalue/libtruthvalue.so
tests/atomspace/AtomTableUTest: /usr/local/lib/libguile-2.2.so
tests/atomspace/AtomTableUTest: /usr/local/lib/libcogutil.so
tests/atomspace/AtomTableUTest: tests/atomspace/CMakeFiles/AtomTableUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable AtomTableUTest"
	cd /root/OPENCOG/atomspace/build/tests/atomspace && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AtomTableUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/atomspace/CMakeFiles/AtomTableUTest.dir/build: tests/atomspace/AtomTableUTest

.PHONY : tests/atomspace/CMakeFiles/AtomTableUTest.dir/build

tests/atomspace/CMakeFiles/AtomTableUTest.dir/requires: tests/atomspace/CMakeFiles/AtomTableUTest.dir/AtomTableUTest.cpp.o.requires

.PHONY : tests/atomspace/CMakeFiles/AtomTableUTest.dir/requires

tests/atomspace/CMakeFiles/AtomTableUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/atomspace && $(CMAKE_COMMAND) -P CMakeFiles/AtomTableUTest.dir/cmake_clean.cmake
.PHONY : tests/atomspace/CMakeFiles/AtomTableUTest.dir/clean

tests/atomspace/CMakeFiles/AtomTableUTest.dir/depend: tests/atomspace/AtomTableUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/atomspace /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/atomspace /root/OPENCOG/atomspace/build/tests/atomspace/CMakeFiles/AtomTableUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/atomspace/CMakeFiles/AtomTableUTest.dir/depend

