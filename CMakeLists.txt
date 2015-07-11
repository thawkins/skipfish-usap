cmake_minimum_required(VERSION 3.2)
project(skipfish)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY bin)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -D LOG_STDERR")

set(SOURCE_FILES
    src/alloc-inl.h
    src/analysis.c
    src/analysis.h
    src/auth.c
    src/auth.h
    src/checks.c
    src/checks.h
    src/config.h
    src/crawler.c
    src/crawler.h
    src/database.c
    src/database.h
    src/debug.h
    src/http_client.c
    src/http_client.h
    src/options.c
    src/options.h
    src/report.c
    src/report.h
    src/signatures.c
    src/signatures.h
    src/string-inl.h
    src/types.h)

add_executable(skipfish  src/skipfish.c ${SOURCE_FILES})
target_link_libraries(skipfish  crypto ssl idn2 z pcre)

add_executable(same_test  src/same_test.c ${SOURCE_FILES})
target_link_libraries(same_test  crypto ssl idn2 z pcre)