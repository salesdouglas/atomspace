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
include opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/depend.make

# Include the progress variables for this target.
include opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/progress.make

# Include the compile flags for this target's objects.
include opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/flags.make

opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o: opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/flags.make
opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o: ../opencog/persist/sql/multi-driver/sniff.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/persist/sql/multi-driver && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sniff.dir/sniff.cc.o -c /root/OPENCOG/atomspace/opencog/persist/sql/multi-driver/sniff.cc

opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sniff.dir/sniff.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/persist/sql/multi-driver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/persist/sql/multi-driver/sniff.cc > CMakeFiles/sniff.dir/sniff.cc.i

opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sniff.dir/sniff.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/persist/sql/multi-driver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/persist/sql/multi-driver/sniff.cc -o CMakeFiles/sniff.dir/sniff.cc.s

opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o.requires:

.PHONY : opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o.requires

opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o.provides: opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o.requires
	$(MAKE) -f opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/build.make opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o.provides.build
.PHONY : opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o.provides

opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o.provides.build: opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o


# Object files for target sniff
sniff_OBJECTS = \
"CMakeFiles/sniff.dir/sniff.cc.o"

# External object files for target sniff
sniff_EXTERNAL_OBJECTS =

opencog/persist/sql/multi-driver/sniff: opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o
opencog/persist/sql/multi-driver/sniff: opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/build.make
opencog/persist/sql/multi-driver/sniff: opencog/persist/sql/multi-driver/libpersist-sql.so
opencog/persist/sql/multi-driver/sniff: opencog/persist/sql/multi-driver/libpersist-odbc.so
opencog/persist/sql/multi-driver/sniff: opencog/persist/sql/multi-driver/libpersist-pg.so
opencog/persist/sql/multi-driver/sniff: opencog/guile/libsmob.so
opencog/persist/sql/multi-driver/sniff: opencog/persist/sql/libsql-support.so
opencog/persist/sql/multi-driver/sniff: /usr/lib/x86_64-linux-gnu/libodbc.so
opencog/persist/sql/multi-driver/sniff: /usr/lib/x86_64-linux-gnu/libpq.so
opencog/persist/sql/multi-driver/sniff: opencog/atoms/reduct/libclearbox.so
opencog/persist/sql/multi-driver/sniff: opencog/atoms/pattern/liblambda.so
opencog/persist/sql/multi-driver/sniff: /usr/local/lib/libguile-2.2.so
opencog/persist/sql/multi-driver/sniff: opencog/atomspaceutils/libatomspaceutils.so
opencog/persist/sql/multi-driver/sniff: opencog/atomspace/libatomspace.so
opencog/persist/sql/multi-driver/sniff: opencog/atoms/core/libatomcore.so
opencog/persist/sql/multi-driver/sniff: opencog/atomutils/libatomutils.so
opencog/persist/sql/multi-driver/sniff: /usr/lib/x86_64-linux-gnu/libboost_thread.so
opencog/persist/sql/multi-driver/sniff: opencog/atoms/base/libatombase.so
opencog/persist/sql/multi-driver/sniff: opencog/truthvalue/libtruthvalue.so
opencog/persist/sql/multi-driver/sniff: opencog/atoms/proto/libatomproto.so
opencog/persist/sql/multi-driver/sniff: /usr/local/lib/libcogutil.so
opencog/persist/sql/multi-driver/sniff: opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sniff"
	cd /root/OPENCOG/atomspace/build/opencog/persist/sql/multi-driver && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sniff.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/build: opencog/persist/sql/multi-driver/sniff

.PHONY : opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/build

opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/requires: opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/sniff.cc.o.requires

.PHONY : opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/requires

opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/clean:
	cd /root/OPENCOG/atomspace/build/opencog/persist/sql/multi-driver && $(CMAKE_COMMAND) -P CMakeFiles/sniff.dir/cmake_clean.cmake
.PHONY : opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/clean

opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/depend:
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/opencog/persist/sql/multi-driver /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/opencog/persist/sql/multi-driver /root/OPENCOG/atomspace/build/opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencog/persist/sql/multi-driver/CMakeFiles/sniff.dir/depend

