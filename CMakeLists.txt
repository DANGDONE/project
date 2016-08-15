cmake_minimum_required(VERSION 2.8.12)

#SET(CMAKE_MODULE_PATH "/home/fff000/Documents/llvm/cmake/modules" ${CMAKE_MODULE_PATH})

find_package(LLVM REQUIRED CONFIG)

# Define add_llvm_* macro's.
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
set(LLVM_RUNTIME_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/${CMAKE_CFG_INTDIR}/bin)
set(LLVM_LIBRARY_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/${CMAKE_CFG_INTDIR}/lib)
set(LLVM_ENABLE_PLUGINS ON)
set(LLVM_PLUGIN_EXT =E2=80=9Cso=E2=80=9D)

#include(HandleLLVMOptions) # important: matches compiler flags to LLVM/Clang build

include(AddLLVM)

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})

add_subdirectory(llvm)

