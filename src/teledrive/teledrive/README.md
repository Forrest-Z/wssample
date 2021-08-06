## the teledrive node

teledrive truck, and cycly send control command to control module.  

**Input Data**

1. G29 driver or remote ip packets
2. frontend lights
3. TL lights

**Input Topics**

1. G29/joy
2. /zone3/chassis/rx/state_lowspeed
3. 

**Output data**

1. control command
2. frontend lights display 

**Output Topics**

1. /zone3/teledrive/teledrive_command
2. 