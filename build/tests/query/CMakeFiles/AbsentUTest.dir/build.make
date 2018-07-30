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
include tests/query/CMakeFiles/AbsentUTest.dir/depend.make

# Include the progress variables for this target.
include tests/query/CMakeFiles/AbsentUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/query/CMakeFiles/AbsentUTest.dir/flags.make

tests/query/AbsentUTest.cpp: ../tests/query/AbsentUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating AbsentUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/query/AbsentUTest.cpp /root/OPENCOG/atomspace/tests/query/AbsentUTest.cxxtest

tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o: tests/query/CMakeFiles/AbsentUTest.dir/flags.make
tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o: tests/query/AbsentUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/query/AbsentUTest.cpp

tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/query/AbsentUTest.cpp > CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.i

tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/query/AbsentUTest.cpp -o CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.s

tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o.requires:

.PHONY : tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o.requires

tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o.provides: tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o.requires
	$(MAKE) -f tests/query/CMakeFiles/AbsentUTest.dir/build.make tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o.provides.build
.PHONY : tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o.provides

tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o.provides.build: tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o


# Object files for target AbsentUTest
AbsentUTest_OBJECTS = \
"CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o"

# External object files for target AbsentUTest
AbsentUTest_EXTERNAL_OBJECTS =

tests/query/AbsentUTest: tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o
tests/query/AbsentUTest: tests/query/CMakeFiles/AbsentUTest.dir/build.make
tests/query/AbsentUTest: opencog/atoms/execution/libexecution.so
tests/query/AbsentUTest: opencog/query/libquery.so
tests/query/AbsentUTest: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/query/AbsentUTest: opencog/cython/libPythonEval.so
tests/query/AbsentUTest: opencog/guile/libsmob.so
tests/query/AbsentUTest: opencog/atoms/pattern/liblambda.so
tests/query/AbsentUTest: opencog/atoms/reduct/libclearbox.so
tests/query/AbsentUTest: opencog/atomspace/libatomspace.so
tests/query/AbsentUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/query/AbsentUTest: opencog/atoms/core/libatomcore.so
tests/query/AbsentUTest: opencog/atomutils/libatomutils.so
tests/query/AbsentUTest: /usr/local/lib/libguile-2.2.so
tests/query/AbsentUTest: opencog/atoms/base/libatombase.so
tests/query/AbsentUTest: opencog/atoms/proto/libatomproto.so
tests/query/AbsentUTest: opencog/truthvalue/libtruthvalue.so
tests/query/AbsentUTest: /usr/local/lib/libcogutil.so
tests/query/AbsentUTest: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/query/AbsentUTest: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
tests/query/AbsentUTest: tests/query/CMakeFiles/AbsentUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable AbsentUTest"
	cd /root/OPENCOG/atomspace/build/tests/query && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AbsentUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/query/CMakeFiles/AbsentUTest.dir/build: tests/query/AbsentUTest

.PHONY : tests/query/CMakeFiles/AbsentUTest.dir/build

tests/query/CMakeFiles/AbsentUTest.dir/requires: tests/query/CMakeFiles/AbsentUTest.dir/AbsentUTest.cpp.o.requires

.PHONY : tests/query/CMakeFiles/AbsentUTest.dir/requires

tests/query/CMakeFiles/AbsentUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/query && $(CMAKE_COMMAND) -P CMakeFiles/AbsentUTest.dir/cmake_clean.cmake
.PHONY : tests/query/CMakeFiles/AbsentUTest.dir/clean

tests/query/CMakeFiles/AbsentUTest.dir/depend: tests/query/AbsentUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/query /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/query /root/OPENCOG/atomspace/build/tests/query/CMakeFiles/AbsentUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/query/CMakeFiles/AbsentUTest.dir/depend

