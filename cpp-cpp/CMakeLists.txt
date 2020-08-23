cmake_minimum_required(VERSION 3.14.3)

# PROTO
add_subdirectory(proto)
link_libraries(proto_cpp-cpp)

# Executables
add_executable(sub_cpp-cpp subscriber.cpp)
add_executable(pub_cpp-cpp publisher.cpp)
