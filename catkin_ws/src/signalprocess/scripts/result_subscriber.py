#!/usr/bin/env python3
import numpy as np
import rospy
from signalprocess.msg import EMGdata,EMGresult


def EMGmeanCallback(msg):

    print('mean',msg.data)

def EMGvarCallback(msg):

    print('var',msg.data)
    

def result_subscriber():
    print('result subscriber')
    
    rospy.init_node('EMG_subscriber', anonymous=True)

    rospy.Subscriber("/emg_mean", EMGresult, EMGmeanCallback)
    rospy.Subscriber("/emg_var", EMGresult, EMGvarCallback)

    #compute the mean and variance then create a publisher
    rospy.spin()

if __name__ == '__main__':
    result_subscriber()
