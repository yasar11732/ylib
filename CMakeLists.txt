cmake_minimum_required (VERSION 2.6)
Project(ylib C)

include_directories("include")
FILE(GLOB LibSources "src/*.c")

add_library(ylib ${LibSources})

add_executable(test_string test_string.c)
add_executable(test_mask test_mask.c)
add_executable(test_alloc test_alloc.c)
add_executable(test_set test_set.c)
add_executable(test_io test_io.c)
add_executable(test_dict test_dict.c)
add_executable(test_set2 test_set2.c)
add_executable(test_split test_split.c)
add_executable(test_strip test_strip.c)

target_link_libraries(test_string ylib)
target_link_libraries(test_alloc ylib)
target_link_libraries(test_set ylib)
target_link_libraries(test_io ylib)
target_link_libraries(test_dict ylib)
target_link_libraries(test_set2 ylib)
target_link_libraries(test_split ylib)
target_link_libraries(test_strip ylib)

set_target_properties(test_set PROPERTIES LINK_FLAGS "/Profile" )
