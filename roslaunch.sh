#!/bin/bash

## ROS Launch

# A quick tutorial into ROS launch.
#

# Please see below an example launch file below.
<launch>
    <rosparam file="$(find glider_kayak_sim)/yaml/sim_params.yaml"/>
    <param name="package_path" value="$(find glider_kayak_sim)"/>
    <include file="$(find glider_kayak_sim)/launch/world_launch.launch"/>
    <node name="wms_server" pkg="glider_kayak_sim" type="wms_server.py" output="screen"/>
    <node name="ros_web_interface" pkg="glider_kayak_sim" type="ros_web_interface.py" output="log"/>
</launch>

# Launch files can make your life easier when developing large projects in ROS.
# You can use launch files to launch multiple files at once and define global parameters.

# Note the rosparam tag:
<rosparam file="$(find glider_kayak_sim)/yaml/sim_params.yaml"/>
# The rosparam tag loads an entire configuration YAML file and makes the YAML parameters available to the nodes you launch.

# Note the param tag:
<param name="package_path" value="$(find glider_kayak_sim)"/>
# The param tag allows you to manually specify parameter values.

# The include file tag, below, includes an entire launch file, and allows you to establish a hierarchy of launch files and sub-launch files.
<include file="$(find glider_kayak_sim)/launch/world_launch.launch"/>

# The node tag, below, launches a specific ROS node, a python script.
<node name="wms_server" pkg="glider_kayak_sim" type="wms_server.py" output="screen"/>

# Inside the code of each ROS node, you can access the parameter values using rospy.get_param, as in the examples below:
max_turn		= rospy.get_param("/kayak_max_turn",		0.10)
max_abs_vel		= rospy.get_param("/kayak_max_abs_vel",		0.01)
wpt_tol			= rospy.get_param("/kayak_wpt_tol",			0.01)
control_const	= rospy.get_param("/kayak_control_const",	4.00)
# Note how the second argument of rospy.get_param is the default value, used in case the parameter is not defined. 



