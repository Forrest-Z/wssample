## the tli65 rx can parse node

receive can msgs from driver node, then parse and pub

**Input Data**

1. can msgs from driver

**Input Topics**

1. /zone3/drivers/can/rx

**Output Topics**

1. /zone3/chassis/rx/container
2. /zone3/chassis/rx/EPB
3. /zone3/chassis/rx/fault
4. /zone3/chassis/rx/hands
5. /zone3/chassis/rx/maintain
6. /zone3/chassis/rx/speed
7. /zone3/chassis/rx/state_highspeed
8. /zone3/chassis/rx/state_lowspeed
9. /zone3/chassis/rx/tyre
10. /zone3/chassis/rx/VIN
11. /zone3/chassis/rx/fuel
