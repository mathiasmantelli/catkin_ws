#include "ros/ros.h"
#include "ros_essentials_cpp/AreaRectangle.h"

bool area(ros_essentials_cpp::AreaRectangle::Request &req, ros_essentials_cpp::AreaRectangle::Response &res){
    res.area = req.h * req.w;
    ROS_INFO("The request: w = %f, h = %f\n", req.w, req.h);
    ROS_INFO("The response is: [A = w * h] -> [%f = %f * %f]\n",res.area, req.w, req.h);
    return true;
}

int main(int argc, char **argv){

    ros::init(argc, argv, "area_rectangle_server");
    ros::NodeHandle n;

    ros::ServiceServer service = n.advertiseService("area_rectangle", area);
    ROS_INFO("Ready to calculate the area of the rectangle.\n");
    ros::spin();

    return 0;
}