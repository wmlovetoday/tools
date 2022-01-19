# CMake 最低版本号要求
cmake_minimum_required (VERSION 3.5)

# 项目信息
project (test_test)

set(CMAKE_VERBOSE_MAKEFILE true)

if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
  message(STATUS "===============build release==============")
  # set(CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -o2 -Wall") 
else()
  set(CMAKE_BUILD_TYPE Debug)
  message(STATUS "===============build debug==============")
  set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -Wall") 
endif()

aux_source_directory(${SRC_EXAM} SourceList)

add_executable(${PROJECT_NAME} ${SourceList})

# target_link_libraries(${PROJECT_NAME} pthread)
