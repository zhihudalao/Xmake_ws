cmake_minimum_required(VERSION 2.8.3)
project(autoscrubber_services)

find_package(catkin REQUIRED
  COMPONENTS
    message_generation
    geometry_msgs
    diagnostic_msgs
    std_msgs
    nav_msgs
)

# services
add_service_files(
  DIRECTORY srv
  FILES
    cmd.srv
)

## messages
#add_message_files(
  #DIRECTORY msg
  #FILES   
#)

generate_messages(DEPENDENCIES diagnostic_msgs geometry_msgs std_msgs nav_msgs)

catkin_package(
  CATKIN_DEPENDS
    message_runtime
)
