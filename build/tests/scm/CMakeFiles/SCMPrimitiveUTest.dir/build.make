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
include tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/depend.make

# Include the progress variables for this target.
include tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/flags.make

tests/scm/SCMPrimitiveUTest.cpp: ../tests/scm/SCMPrimitiveUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating SCMPrimitiveUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/scm && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/scm/SCMPrimitiveUTest.cpp /root/OPENCOG/atomspace/tests/scm/SCMPrimitiveUTest.cxxtest

tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o: tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/flags.make
tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o: tests/scm/SCMPrimitiveUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/scm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/scm/SCMPrimitiveUTest.cpp

tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/scm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/scm/SCMPrimitiveUTest.cpp > CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.i

tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/scm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/scm/SCMPrimitiveUTest.cpp -o CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.s

tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o.requires:

.PHONY : tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o.requires

tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o.provides: tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o.requires
	$(MAKE) -f tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/build.make tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o.provides.build
.PHONY : tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o.provides

tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o.provides.build: tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o


# Object files for target SCMPrimitiveUTest
SCMPrimitiveUTest_OBJECTS = \
"CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o"

# External object files for target SCMPrimitiveUTest
SCMPrimitiveUTest_EXTERNAL_OBJECTS =

tests/scm/SCMPrimitiveUTest: tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o
tests/scm/SCMPrimitiveUTest: tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/build.make
tests/scm/SCMPrimitiveUTest: opencog/atoms/execution/libexecution.so
tests/scm/SCMPrimitiveUTest: /usr/local/lib/libguile-2.2.so
tests/scm/SCMPrimitiveUTest: opencog/query/libquery.so
tests/scm/SCMPrimitiveUTest: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/scm/SCMPrimitiveUTest: opencog/cython/libPythonEval.so
tests/scm/SCMPrimitiveUTest: opencog/guile/libsmob.so
tests/scm/SCMPrimitiveUTest: opencog/atoms/reduct/libclearbox.so
tests/scm/SCMPrimitiveUTest: /usr/local/lib/libguile-2.2.so
tests/scm/SCMPrimitiveUTest: opencog/atoms/pattern/liblambda.so
tests/scm/SCMPrimitiveUTest: opencog/atomspace/libatomspace.so
tests/scm/SCMPrimitiveUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/scm/SCMPrimitiveUTest: opencog/atoms/core/libatomcore.so
tests/scm/SCMPrimitiveUTest: opencog/atomutils/libatomutils.so
tests/scm/SCMPrimitiveUTest: opencog/atoms/base/libatombase.so
tests/scm/SCMPrimitiveUTest: opencog/truthvalue/libtruthvalue.so
tests/scm/SCMPrimitiveUTest: opencog/atoms/proto/libatomproto.so
tests/scm/SCMPrimitiveUTest: /usr/local/lib/libcogutil.so
tests/scm/SCMPrimitiveUTest: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/scm/SCMPrimitiveUTest: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
tests/scm/SCMPrimitiveUTest: tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable SCMPrimitiveUTest"
	cd /root/OPENCOG/atomspace/build/tests/scm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SCMPrimitiveUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/build: tests/scm/SCMPrimitiveUTest

.PHONY : tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/build

tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/requires: tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/SCMPrimitiveUTest.cpp.o.requires

.PHONY : tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/requires

tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/scm && $(CMAKE_COMMAND) -P CMakeFiles/SCMPrimitiveUTest.dir/cmake_clean.cmake
.PHONY : tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/clean

tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/depend: tests/scm/SCMPrimitiveUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/scm /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/scm /root/OPENCOG/atomspace/build/tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/scm/CMakeFiles/SCMPrimitiveUTest.dir/depend

