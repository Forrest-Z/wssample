## the tli65 tx can coding node

receive control msg and coding can msg, then send to can driver.

test_can_tx : simulate can msgs, to test can matrix
shake_hands : send shake hands signal, when receive ok, stop sending.

**Input Data**

1. highspeed control msg
2. lowspeed control msg

**Input Topics**

1. /zone3/control/highspeed_command
2. /zone3/control/lowspeed_command

**Output Topics**

1. /zone3/drivers/can/tx
