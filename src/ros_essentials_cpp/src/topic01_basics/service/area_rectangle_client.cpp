#include "ros/ros.h"
#include "ros_essentials_cpp/AreaRectangle.h"
#include <cstdlib>

int main(int argc, char **argv){

    ros::init(argc, argv, "area_rectangle_client");
    if(argc != 3){
        ROS_INFO("Please, type the width and height of the rectangle:\n");
        return 1;
    }

    ros::NodeHandle n; 
    ros::ServiceClient client = n.serviceClient<ros_essentials_cpp::AreaRectangle>("area_rectangle");
    ros_essentials_cpp::AreaRectangle srv; 
    srv.request.w = atof(argv[1]);
    srv.request.h = atof(argv[2]);
    if(client.call(srv))
        ROS_INFO("The area is: %f\n", srv.response.area);
    else{
        ROS_INFO("There was an error.\n");
        return 1;
    }
    return 0;
}