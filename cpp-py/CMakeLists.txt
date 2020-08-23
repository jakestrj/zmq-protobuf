cmake_minimum_required(VERSION 3.14.3)
project(cpp-py)


# PROTO
PROTOBUF_GENERATE_CPP(PROTO_SRC PROTO_HEADER msg.proto)
ADD_LIBRARY(proto_cpp-py ${PROTO_HEADER} ${PROTO_SRC})
link_libraries(proto_cpp-py)

PROTOBUF_GENERATE_PYTHON(PROTO_PY msg.proto)
add_custom_target(target_cpp-py ALL DEPENDS ${PROTO_PY})

# Executables
add_executable(pub_cpp-py publisher.cpp)