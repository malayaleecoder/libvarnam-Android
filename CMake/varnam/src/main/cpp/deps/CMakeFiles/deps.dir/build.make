# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.4.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.4.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5

# Include any dependencies generated for this target.
include deps/CMakeFiles/deps.dir/depend.make

# Include the progress variables for this target.
include deps/CMakeFiles/deps.dir/progress.make

# Include the compile flags for this target's objects.
include deps/CMakeFiles/deps.dir/flags.make

deps/CMakeFiles/deps.dir/sqlite3.c.o: deps/CMakeFiles/deps.dir/flags.make
deps/CMakeFiles/deps.dir/sqlite3.c.o: deps/sqlite3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/CMakeFiles/deps.dir/sqlite3.c.o"
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/deps.dir/sqlite3.c.o   -c /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/sqlite3.c

deps/CMakeFiles/deps.dir/sqlite3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deps.dir/sqlite3.c.i"
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/sqlite3.c > CMakeFiles/deps.dir/sqlite3.c.i

deps/CMakeFiles/deps.dir/sqlite3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deps.dir/sqlite3.c.s"
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/sqlite3.c -o CMakeFiles/deps.dir/sqlite3.c.s

deps/CMakeFiles/deps.dir/sqlite3.c.o.requires:

.PHONY : deps/CMakeFiles/deps.dir/sqlite3.c.o.requires

deps/CMakeFiles/deps.dir/sqlite3.c.o.provides: deps/CMakeFiles/deps.dir/sqlite3.c.o.requires
	$(MAKE) -f deps/CMakeFiles/deps.dir/build.make deps/CMakeFiles/deps.dir/sqlite3.c.o.provides.build
.PHONY : deps/CMakeFiles/deps.dir/sqlite3.c.o.provides

deps/CMakeFiles/deps.dir/sqlite3.c.o.provides.build: deps/CMakeFiles/deps.dir/sqlite3.c.o


deps/CMakeFiles/deps.dir/snprintf.c.o: deps/CMakeFiles/deps.dir/flags.make
deps/CMakeFiles/deps.dir/snprintf.c.o: deps/snprintf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object deps/CMakeFiles/deps.dir/snprintf.c.o"
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/deps.dir/snprintf.c.o   -c /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/snprintf.c

deps/CMakeFiles/deps.dir/snprintf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deps.dir/snprintf.c.i"
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/snprintf.c > CMakeFiles/deps.dir/snprintf.c.i

deps/CMakeFiles/deps.dir/snprintf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deps.dir/snprintf.c.s"
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/snprintf.c -o CMakeFiles/deps.dir/snprintf.c.s

deps/CMakeFiles/deps.dir/snprintf.c.o.requires:

.PHONY : deps/CMakeFiles/deps.dir/snprintf.c.o.requires

deps/CMakeFiles/deps.dir/snprintf.c.o.provides: deps/CMakeFiles/deps.dir/snprintf.c.o.requires
	$(MAKE) -f deps/CMakeFiles/deps.dir/build.make deps/CMakeFiles/deps.dir/snprintf.c.o.provides.build
.PHONY : deps/CMakeFiles/deps.dir/snprintf.c.o.provides

deps/CMakeFiles/deps.dir/snprintf.c.o.provides.build: deps/CMakeFiles/deps.dir/snprintf.c.o


deps/CMakeFiles/deps.dir/parson.c.o: deps/CMakeFiles/deps.dir/flags.make
deps/CMakeFiles/deps.dir/parson.c.o: deps/parson.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object deps/CMakeFiles/deps.dir/parson.c.o"
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/deps.dir/parson.c.o   -c /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/parson.c

deps/CMakeFiles/deps.dir/parson.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deps.dir/parson.c.i"
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/parson.c > CMakeFiles/deps.dir/parson.c.i

deps/CMakeFiles/deps.dir/parson.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deps.dir/parson.c.s"
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/parson.c -o CMakeFiles/deps.dir/parson.c.s

deps/CMakeFiles/deps.dir/parson.c.o.requires:

.PHONY : deps/CMakeFiles/deps.dir/parson.c.o.requires

deps/CMakeFiles/deps.dir/parson.c.o.provides: deps/CMakeFiles/deps.dir/parson.c.o.requires
	$(MAKE) -f deps/CMakeFiles/deps.dir/build.make deps/CMakeFiles/deps.dir/parson.c.o.provides.build
.PHONY : deps/CMakeFiles/deps.dir/parson.c.o.provides

deps/CMakeFiles/deps.dir/parson.c.o.provides.build: deps/CMakeFiles/deps.dir/parson.c.o


deps/CMakeFiles/deps.dir/strdup.c.o: deps/CMakeFiles/deps.dir/flags.make
deps/CMakeFiles/deps.dir/strdup.c.o: deps/strdup.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object deps/CMakeFiles/deps.dir/strdup.c.o"
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/deps.dir/strdup.c.o   -c /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/strdup.c

deps/CMakeFiles/deps.dir/strdup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deps.dir/strdup.c.i"
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/strdup.c > CMakeFiles/deps.dir/strdup.c.i

deps/CMakeFiles/deps.dir/strdup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deps.dir/strdup.c.s"
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/strdup.c -o CMakeFiles/deps.dir/strdup.c.s

deps/CMakeFiles/deps.dir/strdup.c.o.requires:

.PHONY : deps/CMakeFiles/deps.dir/strdup.c.o.requires

deps/CMakeFiles/deps.dir/strdup.c.o.provides: deps/CMakeFiles/deps.dir/strdup.c.o.requires
	$(MAKE) -f deps/CMakeFiles/deps.dir/build.make deps/CMakeFiles/deps.dir/strdup.c.o.provides.build
.PHONY : deps/CMakeFiles/deps.dir/strdup.c.o.provides

deps/CMakeFiles/deps.dir/strdup.c.o.provides.build: deps/CMakeFiles/deps.dir/strdup.c.o


deps: deps/CMakeFiles/deps.dir/sqlite3.c.o
deps: deps/CMakeFiles/deps.dir/snprintf.c.o
deps: deps/CMakeFiles/deps.dir/parson.c.o
deps: deps/CMakeFiles/deps.dir/strdup.c.o
deps: deps/CMakeFiles/deps.dir/build.make

.PHONY : deps

# Rule to build all files generated by this target.
deps/CMakeFiles/deps.dir/build: deps

.PHONY : deps/CMakeFiles/deps.dir/build

deps/CMakeFiles/deps.dir/requires: deps/CMakeFiles/deps.dir/sqlite3.c.o.requires
deps/CMakeFiles/deps.dir/requires: deps/CMakeFiles/deps.dir/snprintf.c.o.requires
deps/CMakeFiles/deps.dir/requires: deps/CMakeFiles/deps.dir/parson.c.o.requires
deps/CMakeFiles/deps.dir/requires: deps/CMakeFiles/deps.dir/strdup.c.o.requires

.PHONY : deps/CMakeFiles/deps.dir/requires

deps/CMakeFiles/deps.dir/clean:
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps && $(CMAKE_COMMAND) -P CMakeFiles/deps.dir/cmake_clean.cmake
.PHONY : deps/CMakeFiles/deps.dir/clean

deps/CMakeFiles/deps.dir/depend:
	cd /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5 /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5 /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps /Users/VishnuHNair/Downloads/git_temp/libvarnam-3.2.5/deps/CMakeFiles/deps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/CMakeFiles/deps.dir/depend

