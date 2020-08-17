#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import time
from std_srvs.srv import Empty

def callback(pose_message):
    global x
    global y, z, yaw
    x= pose_message.x
    y= pose_message.y
    yaw = pose_message.theta

    print "pose callback"
    print ('x = {}'.format(pose_message.x)) #new in python 3
    print ('y = %f' %pose_message.y) #used in python 2
    print ('yaw = {}'.format(pose_message.theta)) #new in python 3

def move_robot(speed, angle):
       
    rate = rospy.Rate(10) # 10hz

    myTwist = Twist()
    myTwist.linear.x = speed
    myTwist.angular.z = angle
    
    while not rospy.is_shutdown():

        mvrb_publisher.publish(myTwist)
        rate.sleep()

if __name__ == '__main__':
    try:
        rospy.init_node('robot_move_topics', anonymous=True)

        mvrb_publisher = rospy.Publisher('turtle1/cmd_vel', Twist, queue_size=10)
        rospy.Subscriber('turtle1/pose', Pose, callback)
        time.sleep(2)

        print 'move: '
        move_robot(0.5, -0.5)
        time.sleep(2)
        print 'start reset: '
        rospy.wait_for_service('reset')
        reset_turtle = rospy.ServiceProxy('reset', Empty)
        reset_turtle()
        print 'end reset: '
        rospy.spin()
       
    except rospy.ROSInterruptException:
        rospy.loginfo("node terminated.")