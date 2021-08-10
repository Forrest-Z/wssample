## the g29_driver_recv node

receive from g29_socket_send by socket, then parse the ip packs using protobuf, then pub to teledrive node.

**Input Data**

1. G29 control info in protobuf string via ip pack

**Input Topics**

1. 

**Ouput Data**

1. G29 control info

**Output Topics**

1. /zone3/teledrive/socket_recv