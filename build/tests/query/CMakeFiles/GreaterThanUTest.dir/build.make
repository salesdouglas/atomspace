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
include tests/query/CMakeFiles/GreaterThanUTest.dir/depend.make

# Include the progress variables for this target.
include tests/query/CMakeFiles/GreaterThanUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/query/CMakeFiles/GreaterThanUTest.dir/flags.make

tests/query/GreaterThanUTest.cpp: ../tests/query/GreaterThanUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating GreaterThanUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/query/GreaterThanUTest.cpp /root/OPENCOG/atomspace/tests/query/GreaterThanUTest.cxxtest

tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o: tests/query/CMakeFiles/GreaterThanUTest.dir/flags.make
tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o: tests/query/GreaterThanUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/query/GreaterThanUTest.cpp

tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/query/GreaterThanUTest.cpp > CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.i

tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/query/GreaterThanUTest.cpp -o CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.s

tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o.requires:

.PHONY : tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o.requires

tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o.provides: tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o.requires
	$(MAKE) -f tests/query/CMakeFiles/GreaterThanUTest.dir/build.make tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o.provides.build
.PHONY : tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o.provides

tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o.provides.build: tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o


# Object files for target GreaterThanUTest
GreaterThanUTest_OBJECTS = \
"CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o"

# External object files for target GreaterThanUTest
GreaterThanUTest_EXTERNAL_OBJECTS =

tests/query/GreaterThanUTest: tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o
tests/query/GreaterThanUTest: tests/query/CMakeFiles/GreaterThanUTest.dir/build.make
tests/query/GreaterThanUTest: opencog/atoms/execution/libexecution.so
tests/query/GreaterThanUTest: opencog/query/libquery.so
tests/query/GreaterThanUTest: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/query/GreaterThanUTest: opencog/cython/libPythonEval.so
tests/query/GreaterThanUTest: opencog/guile/libsmob.so
tests/query/GreaterThanUTest: opencog/atoms/pattern/liblambda.so
tests/query/GreaterThanUTest: opencog/atoms/reduct/libclearbox.so
tests/query/GreaterThanUTest: opencog/atomspace/libatomspace.so
tests/query/GreaterThanUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/query/GreaterThanUTest: opencog/atoms/core/libatomcore.so
tests/query/GreaterThanUTest: opencog/atomutils/libatomutils.so
tests/query/GreaterThanUTest: /usr/local/lib/libguile-2.2.so
tests/query/GreaterThanUTest: opencog/atoms/base/libatombase.so
tests/query/GreaterThanUTest: opencog/atoms/proto/libatomproto.so
tests/query/GreaterThanUTest: opencog/truthvalue/libtruthvalue.so
tests/query/GreaterThanUTest: /usr/local/lib/libcogutil.so
tests/query/GreaterThanUTest: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/query/GreaterThanUTest: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
tests/query/GreaterThanUTest: tests/query/CMakeFiles/GreaterThanUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable GreaterThanUTest"
	cd /root/OPENCOG/atomspace/build/tests/query && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GreaterThanUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/query/CMakeFiles/GreaterThanUTest.dir/build: tests/query/GreaterThanUTest

.PHONY : tests/query/CMakeFiles/GreaterThanUTest.dir/build

tests/query/CMakeFiles/GreaterThanUTest.dir/requires: tests/query/CMakeFiles/GreaterThanUTest.dir/GreaterThanUTest.cpp.o.requires

.PHONY : tests/query/CMakeFiles/GreaterThanUTest.dir/requires

tests/query/CMakeFiles/GreaterThanUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/query && $(CMAKE_COMMAND) -P CMakeFiles/GreaterThanUTest.dir/cmake_clean.cmake
.PHONY : tests/query/CMakeFiles/GreaterThanUTest.dir/clean

tests/query/CMakeFiles/GreaterThanUTest.dir/depend: tests/query/GreaterThanUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/query /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/query /root/OPENCOG/atomspace/build/tests/query/CMakeFiles/GreaterThanUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/query/CMakeFiles/GreaterThanUTest.dir/depend

