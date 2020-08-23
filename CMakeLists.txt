cmake_minimum_required(VERSION 3.14.3)
project(zmq-protobuf)
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
set (CMAKE_CXX_STANDARD 14)

find_package(ZMQ REQUIRED)
find_package(Protobuf REQUIRED)

include_directories(${CMAKE_BINARY_DIR}) # where header files are built to

include_directories(
        ${ZMQ_INCLUDE_DIRS}
        ${PROTOBUF_INCLUDE_DIR}
)

link_libraries(
        ${ZMQ_LIBRARIES}
        ${PROTOBUF_LIBRARIES}
)

add_subdirectory(cpp-cpp)
add_subdirectory(cpp-py)
add_subdirectory(py-py)
