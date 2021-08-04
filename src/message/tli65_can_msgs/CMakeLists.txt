cmake_minimum_required(VERSION 2.8.3)
project(tli65_can_msgs)

find_package(catkin REQUIRED COMPONENTS
  std_msgs
  can_msgs
  message_generation
)

add_message_files(FILES
  RxContainer.msg
  RxEPB.msg
  RxFt.msg
  RxFuel.msg
  RxHands.msg
  RxMaintain.msg
  RxSpeed.msg
  RxSt1.msg
  RxSt2.msg
  RxSt3.msg
  RxSt4.msg
  RxSt5.msg
  RxSt6.msg
  RxSt7.msg
  RxSt8.msg
  RxSt9.msg
  RxStHighspeed.msg
  RxStLowspeed.msg
  RxTyre.msg
  RxVIN.msg
  ContainerCalib.msg
)

generate_messages(DEPENDENCIES
  std_msgs
  can_msgs
)

catkin_package(CATKIN_DEPENDS
  message_runtime
  std_msgs
  can_msgs
)