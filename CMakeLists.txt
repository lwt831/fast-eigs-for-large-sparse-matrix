cmake_minimum_required(VERSION 3.12)
project(fast_eigs)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if (MSVC)
    add_compile_definitions(NOMINMAX)
    add_compile_definitions(_CRT_SECURE_NO_WARNINGS)
endif()

file(GLOB_RECURSE SOURCE_FILES
    "src/*.cpp"
    "src/*.h"
)

add_executable(fast_eigs ${SOURCE_FILES})

if (MSVC)
    target_compile_options(fast_eigs PRIVATE "/openmp")
endif()