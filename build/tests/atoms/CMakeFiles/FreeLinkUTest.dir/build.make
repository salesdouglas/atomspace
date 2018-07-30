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
include tests/atoms/CMakeFiles/FreeLinkUTest.dir/depend.make

# Include the progress variables for this target.
include tests/atoms/CMakeFiles/FreeLinkUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/atoms/CMakeFiles/FreeLinkUTest.dir/flags.make

tests/atoms/FreeLinkUTest.cpp: ../tests/atoms/FreeLinkUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating FreeLinkUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/atoms && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/atoms/FreeLinkUTest.cpp /root/OPENCOG/atomspace/tests/atoms/FreeLinkUTest.cxxtest

tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o: tests/atoms/CMakeFiles/FreeLinkUTest.dir/flags.make
tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o: tests/atoms/FreeLinkUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/atoms && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/atoms/FreeLinkUTest.cpp

tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/atoms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/atoms/FreeLinkUTest.cpp > CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.i

tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/atoms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/atoms/FreeLinkUTest.cpp -o CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.s

tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o.requires:

.PHONY : tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o.requires

tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o.provides: tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o.requires
	$(MAKE) -f tests/atoms/CMakeFiles/FreeLinkUTest.dir/build.make tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o.provides.build
.PHONY : tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o.provides

tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o.provides.build: tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o


# Object files for target FreeLinkUTest
FreeLinkUTest_OBJECTS = \
"CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o"

# External object files for target FreeLinkUTest
FreeLinkUTest_EXTERNAL_OBJECTS =

tests/atoms/FreeLinkUTest: tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o
tests/atoms/FreeLinkUTest: tests/atoms/CMakeFiles/FreeLinkUTest.dir/build.make
tests/atoms/FreeLinkUTest: opencog/guile/libsmob.so
tests/atoms/FreeLinkUTest: opencog/atoms/reduct/libclearbox.so
tests/atoms/FreeLinkUTest: opencog/atoms/pattern/liblambda.so
tests/atoms/FreeLinkUTest: opencog/atomspace/libatomspace.so
tests/atoms/FreeLinkUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/atoms/FreeLinkUTest: opencog/atoms/core/libatomcore.so
tests/atoms/FreeLinkUTest: opencog/atomutils/libatomutils.so
tests/atoms/FreeLinkUTest: opencog/atoms/base/libatombase.so
tests/atoms/FreeLinkUTest: opencog/atoms/proto/libatomproto.so
tests/atoms/FreeLinkUTest: opencog/truthvalue/libtruthvalue.so
tests/atoms/FreeLinkUTest: /usr/local/lib/libguile-2.2.so
tests/atoms/FreeLinkUTest: /usr/local/lib/libcogutil.so
tests/atoms/FreeLinkUTest: tests/atoms/CMakeFiles/FreeLinkUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable FreeLinkUTest"
	cd /root/OPENCOG/atomspace/build/tests/atoms && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FreeLinkUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/atoms/CMakeFiles/FreeLinkUTest.dir/build: tests/atoms/FreeLinkUTest

.PHONY : tests/atoms/CMakeFiles/FreeLinkUTest.dir/build

tests/atoms/CMakeFiles/FreeLinkUTest.dir/requires: tests/atoms/CMakeFiles/FreeLinkUTest.dir/FreeLinkUTest.cpp.o.requires

.PHONY : tests/atoms/CMakeFiles/FreeLinkUTest.dir/requires

tests/atoms/CMakeFiles/FreeLinkUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/atoms && $(CMAKE_COMMAND) -P CMakeFiles/FreeLinkUTest.dir/cmake_clean.cmake
.PHONY : tests/atoms/CMakeFiles/FreeLinkUTest.dir/clean

tests/atoms/CMakeFiles/FreeLinkUTest.dir/depend: tests/atoms/FreeLinkUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/atoms /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/atoms /root/OPENCOG/atomspace/build/tests/atoms/CMakeFiles/FreeLinkUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/atoms/CMakeFiles/FreeLinkUTest.dir/depend

