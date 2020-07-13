cmake_minimum_required(VERSION 3.5)

set(BUILD_NAME ar_image)
set(BUILD_VERSION 1.0)

project(${BUILD_NAME} C)

set(C_WARNING_FLAGS "-Wall -Werror")
set(C_FLAGS "${C_DEBUG_FLAGS} -O2 ${C_WARNING_FLAGS}")
set(LINKER_FLAGS "-m64 ${LINKER_DEBUG_FLAGS}")

file(GLOB_RECURSE SOURCES "${BUILD_NAME}/*.c" "../lib/*.c")
file(GLOB_RECURSE HEADERS "../include/*.h")

include_directories(
  ${CMAKE_CURRENT_LIST_DIR}/../include
  ${CMAKE_CURRENT_LIST_DIR}/../lib
)

set(LIBRARY_DIR ${CMAKE_SOURCE_DIR}/../lib)

#add_executable(${BUILD_NAME} ${SOURCES} ${HEADERS})
add_library(${BUILD_NAME} ${SOURCES} ${HEADERS})
set_target_properties(${BUILD_NAME} PROPERTIES VERSION ${BUILD_VERSION})

target_link_libraries(${BUILD_NAME} m ${LIBRARY_DIR}/libturbojpeg.a z)
#set_target_properties(${BUILD_NAME} PROPERTIES COMPILE_FLAGS ${C_FLAGS} LINK_FLAGS ${LINKER_FLAGS})
