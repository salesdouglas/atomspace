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
include tests/atoms/CMakeFiles/RewriteLinkUTest.dir/depend.make

# Include the progress variables for this target.
include tests/atoms/CMakeFiles/RewriteLinkUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/atoms/CMakeFiles/RewriteLinkUTest.dir/flags.make

tests/atoms/RewriteLinkUTest.cpp: ../tests/atoms/RewriteLinkUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating RewriteLinkUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/atoms && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/atoms/RewriteLinkUTest.cpp /root/OPENCOG/atomspace/tests/atoms/RewriteLinkUTest.cxxtest

tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o: tests/atoms/CMakeFiles/RewriteLinkUTest.dir/flags.make
tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o: tests/atoms/RewriteLinkUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/atoms && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/atoms/RewriteLinkUTest.cpp

tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/atoms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/atoms/RewriteLinkUTest.cpp > CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.i

tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/atoms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/atoms/RewriteLinkUTest.cpp -o CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.s

tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o.requires:

.PHONY : tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o.requires

tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o.provides: tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o.requires
	$(MAKE) -f tests/atoms/CMakeFiles/RewriteLinkUTest.dir/build.make tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o.provides.build
.PHONY : tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o.provides

tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o.provides.build: tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o


# Object files for target RewriteLinkUTest
RewriteLinkUTest_OBJECTS = \
"CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o"

# External object files for target RewriteLinkUTest
RewriteLinkUTest_EXTERNAL_OBJECTS =

tests/atoms/RewriteLinkUTest: tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o
tests/atoms/RewriteLinkUTest: tests/atoms/CMakeFiles/RewriteLinkUTest.dir/build.make
tests/atoms/RewriteLinkUTest: opencog/guile/libsmob.so
tests/atoms/RewriteLinkUTest: opencog/atoms/reduct/libclearbox.so
tests/atoms/RewriteLinkUTest: opencog/atoms/pattern/liblambda.so
tests/atoms/RewriteLinkUTest: opencog/atomspace/libatomspace.so
tests/atoms/RewriteLinkUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/atoms/RewriteLinkUTest: opencog/atoms/core/libatomcore.so
tests/atoms/RewriteLinkUTest: opencog/atomutils/libatomutils.so
tests/atoms/RewriteLinkUTest: opencog/atoms/base/libatombase.so
tests/atoms/RewriteLinkUTest: opencog/atoms/proto/libatomproto.so
tests/atoms/RewriteLinkUTest: opencog/truthvalue/libtruthvalue.so
tests/atoms/RewriteLinkUTest: /usr/local/lib/libguile-2.2.so
tests/atoms/RewriteLinkUTest: /usr/local/lib/libcogutil.so
tests/atoms/RewriteLinkUTest: tests/atoms/CMakeFiles/RewriteLinkUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable RewriteLinkUTest"
	cd /root/OPENCOG/atomspace/build/tests/atoms && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RewriteLinkUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/atoms/CMakeFiles/RewriteLinkUTest.dir/build: tests/atoms/RewriteLinkUTest

.PHONY : tests/atoms/CMakeFiles/RewriteLinkUTest.dir/build

tests/atoms/CMakeFiles/RewriteLinkUTest.dir/requires: tests/atoms/CMakeFiles/RewriteLinkUTest.dir/RewriteLinkUTest.cpp.o.requires

.PHONY : tests/atoms/CMakeFiles/RewriteLinkUTest.dir/requires

tests/atoms/CMakeFiles/RewriteLinkUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/atoms && $(CMAKE_COMMAND) -P CMakeFiles/RewriteLinkUTest.dir/cmake_clean.cmake
.PHONY : tests/atoms/CMakeFiles/RewriteLinkUTest.dir/clean

tests/atoms/CMakeFiles/RewriteLinkUTest.dir/depend: tests/atoms/RewriteLinkUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/atoms /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/atoms /root/OPENCOG/atomspace/build/tests/atoms/CMakeFiles/RewriteLinkUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/atoms/CMakeFiles/RewriteLinkUTest.dir/depend
