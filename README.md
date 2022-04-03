# ROAM_ROS
please use the following command lines

	cd (path to the catkin_ws)

	source devel/setup.bash

	roscore

	rosrun signalprocess EMG_publisher.py 

	rosrun signalprocess EMG_subscriber.py 

	rosrun signalprocess result_subscriber.py 
	
	
the EMG_publisher publish a current time and 1x8 signal as requested

the EMG_suscriber subscriber the current and 1x8 signal while create a publisher to publish processed signals including mean and variance

the result_subscriber subsribe to the mean and variance signal to check
