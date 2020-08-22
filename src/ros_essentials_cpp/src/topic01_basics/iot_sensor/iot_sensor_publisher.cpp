#include <iostream>
#include "ros/ros.h"
#include "ros_essentials_cpp/IoTSensor.h"

int main(int argc, char **argv)
{

    ros::init(argc, argv, "iot_sensor_publisher");
    ros::NodeHandle n;
    ros::Publisher iot_sensor_pub = n.advertise<ros_essentials_cpp::IoTSensor>("iot_sensor_topic", 1000);
    ros::Rate loop_rate(1);

    int i = 0;

    while(ros::ok()){
        ros_essentials_cpp::IoTSensor iot_msg; 
        iot_msg.id = i; 
        iot_msg.name = "living_room_sensor";
        iot_msg.temperature = 27;
        iot_msg.humidity = .30; 
        ROS_INFO("I publish the msg id: %d \n", iot_msg.id);

        iot_sensor_pub.publish(iot_msg);
        ros::spinOnce();
        loop_rate.sleep();
        i += 1;
    }

    return 0; 

}