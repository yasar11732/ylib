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
include CMakeFiles\test_dict.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\test_dict.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\test_dict.dir\flags.make

CMakeFiles\test_dict.dir\test_dict.c.obj: CMakeFiles\test_dict.dir\flags.make
CMakeFiles\test_dict.dir\test_dict.c.obj: ..\test_dict.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\yasar\Dropbox\yasar_programlar\ylib\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/test_dict.dir/test_dict.c.obj"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\test_dict.dir\test_dict.c.obj /FdCMakeFiles\test_dict.dir\ /FS -c C:\Users\yasar\Dropbox\yasar_programlar\ylib\test_dict.c
<<

CMakeFiles\test_dict.dir\test_dict.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_dict.dir/test_dict.c.i"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe > CMakeFiles\test_dict.dir\test_dict.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\yasar\Dropbox\yasar_programlar\ylib\test_dict.c
<<

CMakeFiles\test_dict.dir\test_dict.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_dict.dir/test_dict.c.s"
	C:\PROGRA~2\MICROS~1.0\VC\bin\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\test_dict.dir\test_dict.c.s /c C:\Users\yasar\Dropbox\yasar_programlar\ylib\test_dict.c
<<

CMakeFiles\test_dict.dir\test_dict.c.obj.requires:

.PHONY : CMakeFiles\test_dict.dir\test_dict.c.obj.requires

CMakeFiles\test_dict.dir\test_dict.c.obj.provides: CMakeFiles\test_dict.dir\test_dict.c.obj.requires
	$(MAKE) -f CMakeFiles\test_dict.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\test_dict.dir\test_dict.c.obj.provides.build
.PHONY : CMakeFiles\test_dict.dir\test_dict.c.obj.provides

CMakeFiles\test_dict.dir\test_dict.c.obj.provides.build: CMakeFiles\test_dict.dir\test_dict.c.obj


# Object files for target test_dict
test_dict_OBJECTS = \
"CMakeFiles\test_dict.dir\test_dict.c.obj"

# External object files for target test_dict
test_dict_EXTERNAL_OBJECTS =

test_dict.exe: CMakeFiles\test_dict.dir\test_dict.c.obj
test_dict.exe: CMakeFiles\test_dict.dir\build.make
test_dict.exe: ylib.lib
test_dict.exe: CMakeFiles\test_dict.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\yasar\Dropbox\yasar_programlar\ylib\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_dict.exe"
	"C:\Program Files\CMake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\test_dict.dir --manifests  -- C:\PROGRA~2\MICROS~1.0\VC\bin\link.exe /nologo @CMakeFiles\test_dict.dir\objects1.rsp @<<
 /out:test_dict.exe /implib:test_dict.lib /pdb:C:\Users\yasar\Dropbox\yasar_programlar\ylib\build\test_dict.pdb /version:0.0  /machine:X86 /INCREMENTAL:NO /subsystem:console ylib.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\test_dict.dir\build: test_dict.exe

.PHONY : CMakeFiles\test_dict.dir\build

CMakeFiles\test_dict.dir\requires: CMakeFiles\test_dict.dir\test_dict.c.obj.requires

.PHONY : CMakeFiles\test_dict.dir\requires

CMakeFiles\test_dict.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\test_dict.dir\cmake_clean.cmake
.PHONY : CMakeFiles\test_dict.dir\clean

CMakeFiles\test_dict.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\yasar\Dropbox\yasar_programlar\ylib C:\Users\yasar\Dropbox\yasar_programlar\ylib C:\Users\yasar\Dropbox\yasar_programlar\ylib\build C:\Users\yasar\Dropbox\yasar_programlar\ylib\build C:\Users\yasar\Dropbox\yasar_programlar\ylib\build\CMakeFiles\test_dict.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\test_dict.dir\depend

