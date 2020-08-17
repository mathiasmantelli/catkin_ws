#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist

def move_robot():
    mvrb_publisher = rospy.Publisher('turtle1/cmd_vel', Twist, queue_size=10)
    rospy.init_node('robot_move_topics', anonymous=True)
    rate = rospy.Rate(10) # 10hz

    myTwist = Twist()
    myTwist.linear.y = 1.0
    myTwist.linear.x = 1.0
    myTwist.angular.z = 1.0
    

    while not rospy.is_shutdown():

        mvrb_publisher.publish(myTwist)
        rate.sleep()

if __name__ == '__main__':
    try:
        move_robot()
    except rospy.ROSInterruptException:
        pass
