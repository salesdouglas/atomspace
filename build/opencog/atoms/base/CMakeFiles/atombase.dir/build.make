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
include opencog/atoms/base/CMakeFiles/atombase.dir/depend.make

# Include the progress variables for this target.
include opencog/atoms/base/CMakeFiles/atombase.dir/progress.make

# Include the compile flags for this target's objects.
include opencog/atoms/base/CMakeFiles/atombase.dir/flags.make

opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o: opencog/atoms/base/CMakeFiles/atombase.dir/flags.make
opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o: ../opencog/atoms/base/Atom.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atombase.dir/Atom.cc.o -c /root/OPENCOG/atomspace/opencog/atoms/base/Atom.cc

opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atombase.dir/Atom.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atoms/base/Atom.cc > CMakeFiles/atombase.dir/Atom.cc.i

opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atombase.dir/Atom.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atoms/base/Atom.cc -o CMakeFiles/atombase.dir/Atom.cc.s

opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o.requires:

.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o.requires

opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o.provides: opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o.requires
	$(MAKE) -f opencog/atoms/base/CMakeFiles/atombase.dir/build.make opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o.provides.build
.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o.provides

opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o.provides.build: opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o


opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o: opencog/atoms/base/CMakeFiles/atombase.dir/flags.make
opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o: ../opencog/atoms/base/ClassServer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atombase.dir/ClassServer.cc.o -c /root/OPENCOG/atomspace/opencog/atoms/base/ClassServer.cc

opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atombase.dir/ClassServer.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atoms/base/ClassServer.cc > CMakeFiles/atombase.dir/ClassServer.cc.i

opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atombase.dir/ClassServer.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atoms/base/ClassServer.cc -o CMakeFiles/atombase.dir/ClassServer.cc.s

opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o.requires:

.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o.requires

opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o.provides: opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o.requires
	$(MAKE) -f opencog/atoms/base/CMakeFiles/atombase.dir/build.make opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o.provides.build
.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o.provides

opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o.provides.build: opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o


opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o: opencog/atoms/base/CMakeFiles/atombase.dir/flags.make
opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o: ../opencog/atoms/base/Handle.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atombase.dir/Handle.cc.o -c /root/OPENCOG/atomspace/opencog/atoms/base/Handle.cc

opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atombase.dir/Handle.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atoms/base/Handle.cc > CMakeFiles/atombase.dir/Handle.cc.i

opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atombase.dir/Handle.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atoms/base/Handle.cc -o CMakeFiles/atombase.dir/Handle.cc.s

opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o.requires:

.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o.requires

opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o.provides: opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o.requires
	$(MAKE) -f opencog/atoms/base/CMakeFiles/atombase.dir/build.make opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o.provides.build
.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o.provides

opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o.provides.build: opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o


opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o: opencog/atoms/base/CMakeFiles/atombase.dir/flags.make
opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o: ../opencog/atoms/base/Link.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atombase.dir/Link.cc.o -c /root/OPENCOG/atomspace/opencog/atoms/base/Link.cc

opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atombase.dir/Link.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atoms/base/Link.cc > CMakeFiles/atombase.dir/Link.cc.i

opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atombase.dir/Link.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atoms/base/Link.cc -o CMakeFiles/atombase.dir/Link.cc.s

opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o.requires:

.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o.requires

opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o.provides: opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o.requires
	$(MAKE) -f opencog/atoms/base/CMakeFiles/atombase.dir/build.make opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o.provides.build
.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o.provides

opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o.provides.build: opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o


opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o: opencog/atoms/base/CMakeFiles/atombase.dir/flags.make
opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o: ../opencog/atoms/base/Node.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atombase.dir/Node.cc.o -c /root/OPENCOG/atomspace/opencog/atoms/base/Node.cc

opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atombase.dir/Node.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atoms/base/Node.cc > CMakeFiles/atombase.dir/Node.cc.i

opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atombase.dir/Node.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atoms/base/Node.cc -o CMakeFiles/atombase.dir/Node.cc.s

opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o.requires:

.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o.requires

opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o.provides: opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o.requires
	$(MAKE) -f opencog/atoms/base/CMakeFiles/atombase.dir/build.make opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o.provides.build
.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o.provides

opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o.provides.build: opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o


opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o: opencog/atoms/base/CMakeFiles/atombase.dir/flags.make
opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o: ../opencog/atoms/base/Valuation.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atombase.dir/Valuation.cc.o -c /root/OPENCOG/atomspace/opencog/atoms/base/Valuation.cc

opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atombase.dir/Valuation.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atoms/base/Valuation.cc > CMakeFiles/atombase.dir/Valuation.cc.i

opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atombase.dir/Valuation.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atoms/base/Valuation.cc -o CMakeFiles/atombase.dir/Valuation.cc.s

opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o.requires:

.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o.requires

opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o.provides: opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o.requires
	$(MAKE) -f opencog/atoms/base/CMakeFiles/atombase.dir/build.make opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o.provides.build
.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o.provides

opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o.provides.build: opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o


# Object files for target atombase
atombase_OBJECTS = \
"CMakeFiles/atombase.dir/Atom.cc.o" \
"CMakeFiles/atombase.dir/ClassServer.cc.o" \
"CMakeFiles/atombase.dir/Handle.cc.o" \
"CMakeFiles/atombase.dir/Link.cc.o" \
"CMakeFiles/atombase.dir/Node.cc.o" \
"CMakeFiles/atombase.dir/Valuation.cc.o"

# External object files for target atombase
atombase_EXTERNAL_OBJECTS =

opencog/atoms/base/libatombase.so: opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o
opencog/atoms/base/libatombase.so: opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o
opencog/atoms/base/libatombase.so: opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o
opencog/atoms/base/libatombase.so: opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o
opencog/atoms/base/libatombase.so: opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o
opencog/atoms/base/libatombase.so: opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o
opencog/atoms/base/libatombase.so: opencog/atoms/base/CMakeFiles/atombase.dir/build.make
opencog/atoms/base/libatombase.so: opencog/atoms/proto/libatomproto.so
opencog/atoms/base/libatombase.so: opencog/truthvalue/libtruthvalue.so
opencog/atoms/base/libatombase.so: /usr/local/lib/libcogutil.so
opencog/atoms/base/libatombase.so: /usr/local/lib/libcogutil.so
opencog/atoms/base/libatombase.so: opencog/atoms/base/CMakeFiles/atombase.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX shared library libatombase.so"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/atombase.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencog/atoms/base/CMakeFiles/atombase.dir/build: opencog/atoms/base/libatombase.so

.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/build

opencog/atoms/base/CMakeFiles/atombase.dir/requires: opencog/atoms/base/CMakeFiles/atombase.dir/Atom.cc.o.requires
opencog/atoms/base/CMakeFiles/atombase.dir/requires: opencog/atoms/base/CMakeFiles/atombase.dir/ClassServer.cc.o.requires
opencog/atoms/base/CMakeFiles/atombase.dir/requires: opencog/atoms/base/CMakeFiles/atombase.dir/Handle.cc.o.requires
opencog/atoms/base/CMakeFiles/atombase.dir/requires: opencog/atoms/base/CMakeFiles/atombase.dir/Link.cc.o.requires
opencog/atoms/base/CMakeFiles/atombase.dir/requires: opencog/atoms/base/CMakeFiles/atombase.dir/Node.cc.o.requires
opencog/atoms/base/CMakeFiles/atombase.dir/requires: opencog/atoms/base/CMakeFiles/atombase.dir/Valuation.cc.o.requires

.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/requires

opencog/atoms/base/CMakeFiles/atombase.dir/clean:
	cd /root/OPENCOG/atomspace/build/opencog/atoms/base && $(CMAKE_COMMAND) -P CMakeFiles/atombase.dir/cmake_clean.cmake
.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/clean

opencog/atoms/base/CMakeFiles/atombase.dir/depend:
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/opencog/atoms/base /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/opencog/atoms/base /root/OPENCOG/atomspace/build/opencog/atoms/base/CMakeFiles/atombase.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencog/atoms/base/CMakeFiles/atombase.dir/depend

