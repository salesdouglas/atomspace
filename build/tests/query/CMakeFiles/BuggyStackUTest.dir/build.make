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
include tests/query/CMakeFiles/BuggyStackUTest.dir/depend.make

# Include the progress variables for this target.
include tests/query/CMakeFiles/BuggyStackUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/query/CMakeFiles/BuggyStackUTest.dir/flags.make

tests/query/BuggyStackUTest.cpp: ../tests/query/BuggyStackUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating BuggyStackUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/query/BuggyStackUTest.cpp /root/OPENCOG/atomspace/tests/query/BuggyStackUTest.cxxtest

tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o: tests/query/CMakeFiles/BuggyStackUTest.dir/flags.make
tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o: tests/query/BuggyStackUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/query/BuggyStackUTest.cpp

tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/query/BuggyStackUTest.cpp > CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.i

tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/query/BuggyStackUTest.cpp -o CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.s

tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o.requires:

.PHONY : tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o.requires

tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o.provides: tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o.requires
	$(MAKE) -f tests/query/CMakeFiles/BuggyStackUTest.dir/build.make tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o.provides.build
.PHONY : tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o.provides

tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o.provides.build: tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o


# Object files for target BuggyStackUTest
BuggyStackUTest_OBJECTS = \
"CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o"

# External object files for target BuggyStackUTest
BuggyStackUTest_EXTERNAL_OBJECTS =

tests/query/BuggyStackUTest: tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o
tests/query/BuggyStackUTest: tests/query/CMakeFiles/BuggyStackUTest.dir/build.make
tests/query/BuggyStackUTest: opencog/atoms/execution/libexecution.so
tests/query/BuggyStackUTest: opencog/query/libquery.so
tests/query/BuggyStackUTest: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/query/BuggyStackUTest: opencog/cython/libPythonEval.so
tests/query/BuggyStackUTest: opencog/guile/libsmob.so
tests/query/BuggyStackUTest: opencog/atoms/pattern/liblambda.so
tests/query/BuggyStackUTest: opencog/atoms/reduct/libclearbox.so
tests/query/BuggyStackUTest: opencog/atomspace/libatomspace.so
tests/query/BuggyStackUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/query/BuggyStackUTest: opencog/atoms/core/libatomcore.so
tests/query/BuggyStackUTest: opencog/atomutils/libatomutils.so
tests/query/BuggyStackUTest: /usr/local/lib/libguile-2.2.so
tests/query/BuggyStackUTest: opencog/atoms/base/libatombase.so
tests/query/BuggyStackUTest: opencog/atoms/proto/libatomproto.so
tests/query/BuggyStackUTest: opencog/truthvalue/libtruthvalue.so
tests/query/BuggyStackUTest: /usr/local/lib/libcogutil.so
tests/query/BuggyStackUTest: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/query/BuggyStackUTest: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
tests/query/BuggyStackUTest: tests/query/CMakeFiles/BuggyStackUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable BuggyStackUTest"
	cd /root/OPENCOG/atomspace/build/tests/query && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BuggyStackUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/query/CMakeFiles/BuggyStackUTest.dir/build: tests/query/BuggyStackUTest

.PHONY : tests/query/CMakeFiles/BuggyStackUTest.dir/build

tests/query/CMakeFiles/BuggyStackUTest.dir/requires: tests/query/CMakeFiles/BuggyStackUTest.dir/BuggyStackUTest.cpp.o.requires

.PHONY : tests/query/CMakeFiles/BuggyStackUTest.dir/requires

tests/query/CMakeFiles/BuggyStackUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/query && $(CMAKE_COMMAND) -P CMakeFiles/BuggyStackUTest.dir/cmake_clean.cmake
.PHONY : tests/query/CMakeFiles/BuggyStackUTest.dir/clean

tests/query/CMakeFiles/BuggyStackUTest.dir/depend: tests/query/BuggyStackUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/query /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/query /root/OPENCOG/atomspace/build/tests/query/CMakeFiles/BuggyStackUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/query/CMakeFiles/BuggyStackUTest.dir/depend

