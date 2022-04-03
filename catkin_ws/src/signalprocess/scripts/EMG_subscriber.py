#!/usr/bin/env python3
import numpy as np
import rospy
from signalprocess.msg import EMGdata,EMGresult

datarecord=np.zeros([1,8])

def EMGCallback(msg):
    global datarecord
    print(msg.data)
    rospy.loginfo("Subscriber:signal_time[%s]", msg.current_time)

    #datarecord=np.vstack((datarecord,msg.data))
    datarecord=np.vstack((datarecord,np.reshape(msg.data,[1,8])))
    #datarecord=np.append(datarecord,np.reshape(msg.data,[1,8]))
    
    print('recorded data shape: ',datarecord.shape,len(msg.data))

def signal_mean_variance():
    if datarecord.shape[0]<1000:
        windowsignal=datarecord
    else:
        windowsignal=datarecord[-1000:,:]
    mean=np.mean(windowsignal,axis=0)
    variance=np.var(windowsignal,axis=0)
    return mean,variance
    

    

def EMG_subscriber():
    print('subscriber')
    
    rospy.init_node('EMG_subscriber', anonymous=True)



    rate=rospy.Rate(10)
    
    while not rospy.is_shutdown():
        rospy.Subscriber("/EMGdata", EMGdata, EMGCallback)
        #compute the mean and variance then create a publisher
        mean_pub=rospy.Publisher('/emg_mean',EMGresult,queue_size=10)
        var_pub=rospy.Publisher('/emg_var',EMGresult,queue_size=10)
        emg_mean_msg= EMGresult()
        emg_var_msg= EMGresult()
        emg_mean_msg.data,emg_var_msg.data=signal_mean_variance()
        mean_pub.publish(emg_mean_msg)
        var_pub.publish(emg_var_msg)
        rospy.loginfo("Publsh EMGresult_mean[%d]", emg_mean_msg.data[0])
        rospy.loginfo("Publsh EMGresult_var[%d]", emg_var_msg.data[0])
        rate.sleep()

    #rospy.spin()


def result_publisher():
    rospy.init_node('result_publisher',anonymous=False)
    mean_pub=rospy.Publisher('/emg_mean',EMGresult,queue_size=10)
    var_pub=rospy.Publisher('/emg_var',EMGresult,queue_size=10)
    rate=rospy.Rate(10)
    
    while not rospy.is_shutdown():
        emg_mean_msg= EMGresult()
        emg_var_msg= EMGresult()
        emg_mean_msg.data,emg_var_msg.data=signal_mean_variance()


        # 发布消息
        mean_pub.publish(emg_mean_msg)
        var_pub.publish(emg_var_msg)
        rospy.loginfo("Publsh EMGresult_mean[%d]", emg_mean_msg.data)
        rospy.loginfo("Publsh EMGresult_var[%d]", emg_var_msg.data)
        # 按照循环频率延时
        rate.sleep()

if __name__ == '__main__':
    EMG_subscriber()
    result_publisher()