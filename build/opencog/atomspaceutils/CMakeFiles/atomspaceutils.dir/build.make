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
include opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/depend.make

# Include the progress variables for this target.
include opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/progress.make

# Include the compile flags for this target's objects.
include opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/flags.make

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/flags.make
opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o: ../opencog/atomspaceutils/AtomSpaceUtils.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atomspaceutils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o -c /root/OPENCOG/atomspace/opencog/atomspaceutils/AtomSpaceUtils.cc

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atomspaceutils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atomspaceutils/AtomSpaceUtils.cc > CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.i

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atomspaceutils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atomspaceutils/AtomSpaceUtils.cc -o CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.s

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o.requires:

.PHONY : opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o.requires

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o.provides: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o.requires
	$(MAKE) -f opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/build.make opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o.provides.build
.PHONY : opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o.provides

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o.provides.build: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o


opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/flags.make
opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o: ../opencog/atomspaceutils/RandomAtomGenerator.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atomspaceutils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o -c /root/OPENCOG/atomspace/opencog/atomspaceutils/RandomAtomGenerator.cc

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atomspaceutils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atomspaceutils/RandomAtomGenerator.cc > CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.i

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atomspaceutils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atomspaceutils/RandomAtomGenerator.cc -o CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.s

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o.requires:

.PHONY : opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o.requires

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o.provides: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o.requires
	$(MAKE) -f opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/build.make opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o.provides.build
.PHONY : opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o.provides

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o.provides.build: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o


opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/flags.make
opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o: ../opencog/atomspaceutils/TLB.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atomspaceutils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atomspaceutils.dir/TLB.cc.o -c /root/OPENCOG/atomspace/opencog/atomspaceutils/TLB.cc

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atomspaceutils.dir/TLB.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atomspaceutils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atomspaceutils/TLB.cc > CMakeFiles/atomspaceutils.dir/TLB.cc.i

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atomspaceutils.dir/TLB.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atomspaceutils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atomspaceutils/TLB.cc -o CMakeFiles/atomspaceutils.dir/TLB.cc.s

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o.requires:

.PHONY : opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o.requires

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o.provides: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o.requires
	$(MAKE) -f opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/build.make opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o.provides.build
.PHONY : opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o.provides

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o.provides.build: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o


# Object files for target atomspaceutils
atomspaceutils_OBJECTS = \
"CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o" \
"CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o" \
"CMakeFiles/atomspaceutils.dir/TLB.cc.o"

# External object files for target atomspaceutils
atomspaceutils_EXTERNAL_OBJECTS =

opencog/atomspaceutils/libatomspaceutils.so: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o
opencog/atomspaceutils/libatomspaceutils.so: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o
opencog/atomspaceutils/libatomspaceutils.so: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o
opencog/atomspaceutils/libatomspaceutils.so: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/build.make
opencog/atomspaceutils/libatomspaceutils.so: opencog/atomspace/libatomspace.so
opencog/atomspaceutils/libatomspaceutils.so: /usr/local/lib/libcogutil.so
opencog/atomspaceutils/libatomspaceutils.so: opencog/atoms/core/libatomcore.so
opencog/atomspaceutils/libatomspaceutils.so: opencog/atomutils/libatomutils.so
opencog/atomspaceutils/libatomspaceutils.so: opencog/atoms/base/libatombase.so
opencog/atomspaceutils/libatomspaceutils.so: opencog/atoms/proto/libatomproto.so
opencog/atomspaceutils/libatomspaceutils.so: opencog/truthvalue/libtruthvalue.so
opencog/atomspaceutils/libatomspaceutils.so: /usr/local/lib/libcogutil.so
opencog/atomspaceutils/libatomspaceutils.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
opencog/atomspaceutils/libatomspaceutils.so: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libatomspaceutils.so"
	cd /root/OPENCOG/atomspace/build/opencog/atomspaceutils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/atomspaceutils.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/build: opencog/atomspaceutils/libatomspaceutils.so

.PHONY : opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/build

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/requires: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/AtomSpaceUtils.cc.o.requires
opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/requires: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/RandomAtomGenerator.cc.o.requires
opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/requires: opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/TLB.cc.o.requires

.PHONY : opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/requires

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/clean:
	cd /root/OPENCOG/atomspace/build/opencog/atomspaceutils && $(CMAKE_COMMAND) -P CMakeFiles/atomspaceutils.dir/cmake_clean.cmake
.PHONY : opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/clean

opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/depend:
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/opencog/atomspaceutils /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/opencog/atomspaceutils /root/OPENCOG/atomspace/build/opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencog/atomspaceutils/CMakeFiles/atomspaceutils.dir/depend
