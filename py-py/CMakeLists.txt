cmake_minimum_required(VERSION 3.14.3)
project(py-py)

PROTOBUF_GENERATE_PYTHON(PROTO_PY msg.proto)
add_custom_target(target_py-py ALL DEPENDS ${PROTO_PY})