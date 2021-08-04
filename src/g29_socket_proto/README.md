## the driver_send_proto node

make protobuf file .proto into .cpp, and make a .so to share with other nodes

use command : protoc --cpp_out=. G29Socket.proto

**Input Data**

1. G29_socket_send proto file

**Output File**

libG29Socket.so

