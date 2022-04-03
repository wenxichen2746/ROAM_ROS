#!/usr/bin/env python3
import numpy as np
import rospy
import time
from signalprocess.msg import EMGdata
from typing import List, Tuple, Union

def signal_publisher():
    rospy.init_node('signal_publisher',anonymous=False)
    sig_pub=rospy.Publisher('/EMGdata',EMGdata,queue_size=10)
    rate=rospy.Rate(10)
    
    while not rospy.is_shutdown():
        Emgdata_msg= EMGdata()
        Emgdata_msg.current_time = time.ctime()
        Emgdata_msg.data  = np.random.normal(0,10,[1,8]).flatten()

        # 发布消息
        sig_pub.publish(Emgdata_msg)
        rospy.loginfo("Publsh EMGdata[%s]", Emgdata_msg.current_time)

        # 按照循环频率延时
        rate.sleep()

if __name__ == '__main__':
    try:
        signal_publisher()
    except rospy.ROSInterruptException:
        pass