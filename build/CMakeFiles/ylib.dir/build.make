# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\yasar\Dropbox\yasar_programlar\ylib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\yasar\Dropbox\yasar_programlar\ylib\build

# Include any dependencies generated for this target.
include CMakeFiles\ylib.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\ylib.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\ylib.dir\flags.make

CMakeFiles\ylib.dir\src\dict.c.obj: CMakeFiles\ylib.dir\flags.make
CMakeFiles\ylib.dir\src\dict.c.obj: ..\src\dict.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yasar\Dropbox\yasar_programlar\ylib\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ylib.dir/src/dict.c.obj"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\ylib.dir\src\dict.c.obj /FdCMakeFiles\ylib.dir\ylib.pdb /FS -c C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\dict.c
<<

CMakeFiles\ylib.dir\src\dict.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ylib.dir/src/dict.c.i"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe > CMakeFiles\ylib.dir\src\dict.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\dict.c
<<

CMakeFiles\ylib.dir\src\dict.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ylib.dir/src/dict.c.s"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\ylib.dir\src\dict.c.s /c C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\dict.c
<<

CMakeFiles\ylib.dir\src\dict.c.obj.requires:

.PHONY : CMakeFiles\ylib.dir\src\dict.c.obj.requires

CMakeFiles\ylib.dir\src\dict.c.obj.provides: CMakeFiles\ylib.dir\src\dict.c.obj.requires
	$(MAKE) -f CMakeFiles\ylib.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\ylib.dir\src\dict.c.obj.provides.build
.PHONY : CMakeFiles\ylib.dir\src\dict.c.obj.provides

CMakeFiles\ylib.dir\src\dict.c.obj.provides.build: CMakeFiles\ylib.dir\src\dict.c.obj


CMakeFiles\ylib.dir\src\io.c.obj: CMakeFiles\ylib.dir\flags.make
CMakeFiles\ylib.dir\src\io.c.obj: ..\src\io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yasar\Dropbox\yasar_programlar\ylib\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ylib.dir/src/io.c.obj"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\ylib.dir\src\io.c.obj /FdCMakeFiles\ylib.dir\ylib.pdb /FS -c C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\io.c
<<

CMakeFiles\ylib.dir\src\io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ylib.dir/src/io.c.i"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe > CMakeFiles\ylib.dir\src\io.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\io.c
<<

CMakeFiles\ylib.dir\src\io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ylib.dir/src/io.c.s"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\ylib.dir\src\io.c.s /c C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\io.c
<<

CMakeFiles\ylib.dir\src\io.c.obj.requires:

.PHONY : CMakeFiles\ylib.dir\src\io.c.obj.requires

CMakeFiles\ylib.dir\src\io.c.obj.provides: CMakeFiles\ylib.dir\src\io.c.obj.requires
	$(MAKE) -f CMakeFiles\ylib.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\ylib.dir\src\io.c.obj.provides.build
.PHONY : CMakeFiles\ylib.dir\src\io.c.obj.provides

CMakeFiles\ylib.dir\src\io.c.obj.provides.build: CMakeFiles\ylib.dir\src\io.c.obj


CMakeFiles\ylib.dir\src\set.c.obj: CMakeFiles\ylib.dir\flags.make
CMakeFiles\ylib.dir\src\set.c.obj: ..\src\set.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yasar\Dropbox\yasar_programlar\ylib\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/ylib.dir/src/set.c.obj"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\ylib.dir\src\set.c.obj /FdCMakeFiles\ylib.dir\ylib.pdb /FS -c C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\set.c
<<

CMakeFiles\ylib.dir\src\set.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ylib.dir/src/set.c.i"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe > CMakeFiles\ylib.dir\src\set.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\set.c
<<

CMakeFiles\ylib.dir\src\set.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ylib.dir/src/set.c.s"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\ylib.dir\src\set.c.s /c C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\set.c
<<

CMakeFiles\ylib.dir\src\set.c.obj.requires:

.PHONY : CMakeFiles\ylib.dir\src\set.c.obj.requires

CMakeFiles\ylib.dir\src\set.c.obj.provides: CMakeFiles\ylib.dir\src\set.c.obj.requires
	$(MAKE) -f CMakeFiles\ylib.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\ylib.dir\src\set.c.obj.provides.build
.PHONY : CMakeFiles\ylib.dir\src\set.c.obj.provides

CMakeFiles\ylib.dir\src\set.c.obj.provides.build: CMakeFiles\ylib.dir\src\set.c.obj


CMakeFiles\ylib.dir\src\std.c.obj: CMakeFiles\ylib.dir\flags.make
CMakeFiles\ylib.dir\src\std.c.obj: ..\src\std.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yasar\Dropbox\yasar_programlar\ylib\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/ylib.dir/src/std.c.obj"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\ylib.dir\src\std.c.obj /FdCMakeFiles\ylib.dir\ylib.pdb /FS -c C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\std.c
<<

CMakeFiles\ylib.dir\src\std.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ylib.dir/src/std.c.i"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe > CMakeFiles\ylib.dir\src\std.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\std.c
<<

CMakeFiles\ylib.dir\src\std.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ylib.dir/src/std.c.s"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\ylib.dir\src\std.c.s /c C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\std.c
<<

CMakeFiles\ylib.dir\src\std.c.obj.requires:

.PHONY : CMakeFiles\ylib.dir\src\std.c.obj.requires

CMakeFiles\ylib.dir\src\std.c.obj.provides: CMakeFiles\ylib.dir\src\std.c.obj.requires
	$(MAKE) -f CMakeFiles\ylib.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\ylib.dir\src\std.c.obj.provides.build
.PHONY : CMakeFiles\ylib.dir\src\std.c.obj.provides

CMakeFiles\ylib.dir\src\std.c.obj.provides.build: CMakeFiles\ylib.dir\src\std.c.obj


CMakeFiles\ylib.dir\src\string.c.obj: CMakeFiles\ylib.dir\flags.make
CMakeFiles\ylib.dir\src\string.c.obj: ..\src\string.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yasar\Dropbox\yasar_programlar\ylib\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/ylib.dir/src/string.c.obj"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\ylib.dir\src\string.c.obj /FdCMakeFiles\ylib.dir\ylib.pdb /FS -c C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\string.c
<<

CMakeFiles\ylib.dir\src\string.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ylib.dir/src/string.c.i"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe > CMakeFiles\ylib.dir\src\string.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\string.c
<<

CMakeFiles\ylib.dir\src\string.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ylib.dir/src/string.c.s"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\ylib.dir\src\string.c.s /c C:\Users\yasar\Dropbox\yasar_programlar\ylib\src\string.c
<<

CMakeFiles\ylib.dir\src\string.c.obj.requires:

.PHONY : CMakeFiles\ylib.dir\src\string.c.obj.requires

CMakeFiles\ylib.dir\src\string.c.obj.provides: CMakeFiles\ylib.dir\src\string.c.obj.requires
	$(MAKE) -f CMakeFiles\ylib.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\ylib.dir\src\string.c.obj.provides.build
.PHONY : CMakeFiles\ylib.dir\src\string.c.obj.provides

CMakeFiles\ylib.dir\src\string.c.obj.provides.build: CMakeFiles\ylib.dir\src\string.c.obj


# Object files for target ylib
ylib_OBJECTS = \
"CMakeFiles\ylib.dir\src\dict.c.obj" \
"CMakeFiles\ylib.dir\src\io.c.obj" \
"CMakeFiles\ylib.dir\src\set.c.obj" \
"CMakeFiles\ylib.dir\src\std.c.obj" \
"CMakeFiles\ylib.dir\src\string.c.obj"

# External object files for target ylib
ylib_EXTERNAL_OBJECTS =

ylib.lib: CMakeFiles\ylib.dir\src\dict.c.obj
ylib.lib: CMakeFiles\ylib.dir\src\io.c.obj
ylib.lib: CMakeFiles\ylib.dir\src\set.c.obj
ylib.lib: CMakeFiles\ylib.dir\src\std.c.obj
ylib.lib: CMakeFiles\ylib.dir\src\string.c.obj
ylib.lib: CMakeFiles\ylib.dir\build.make
ylib.lib: CMakeFiles\ylib.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\yasar\Dropbox\yasar_programlar\ylib\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C static library ylib.lib"
	$(CMAKE_COMMAND) -P CMakeFiles\ylib.dir\cmake_clean_target.cmake
	C:\PROGRA~2\MICROS~1.0\VC\bin\link.exe /lib /nologo /machine:X86 /out:ylib.lib @CMakeFiles\ylib.dir\objects1.rsp 

# Rule to build all files generated by this target.
CMakeFiles\ylib.dir\build: ylib.lib

.PHONY : CMakeFiles\ylib.dir\build

CMakeFiles\ylib.dir\requires: CMakeFiles\ylib.dir\src\dict.c.obj.requires
CMakeFiles\ylib.dir\requires: CMakeFiles\ylib.dir\src\io.c.obj.requires
CMakeFiles\ylib.dir\requires: CMakeFiles\ylib.dir\src\set.c.obj.requires
CMakeFiles\ylib.dir\requires: CMakeFiles\ylib.dir\src\std.c.obj.requires
CMakeFiles\ylib.dir\requires: CMakeFiles\ylib.dir\src\string.c.obj.requires

.PHONY : CMakeFiles\ylib.dir\requires

CMakeFiles\ylib.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ylib.dir\cmake_clean.cmake
.PHONY : CMakeFiles\ylib.dir\clean

CMakeFiles\ylib.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\yasar\Dropbox\yasar_programlar\ylib C:\Users\yasar\Dropbox\yasar_programlar\ylib C:\Users\yasar\Dropbox\yasar_programlar\ylib\build C:\Users\yasar\Dropbox\yasar_programlar\ylib\build C:\Users\yasar\Dropbox\yasar_programlar\ylib\build\CMakeFiles\ylib.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\ylib.dir\depend
