#include "ros/ros.h"
#include "ros_essentials_cpp/IoTSensor.h"
#include "std_msgs/String.h"

void iotmsgCallback(const ros_essentials_cpp::IoTSensor::ConstPtr &my_msg){
    ROS_INFO("%d, %s, %f, %f \n", my_msg->id, my_msg->name.c_str(), my_msg->temperature, my_msg->humidity);
}

int main(int argc, char **argv){

  ros::init(argc, argv, "iot_sensor_subscriber");

  ros::NodeHandle n;
 
  ros::Subscriber sub = n.subscribe<ros_essentials_cpp::IoTSensor>("iot_sensor_topic", 1000, iotmsgCallback);

  ros::spin();

  return 0;
}