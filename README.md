
VI-RPE: Visual-Inertial Relative Pose Estimation for Aerial Vehicles
======================
This code is part of the publication **VI-RPE: Visual-Inertial Relative Pose Estimation for Aerial Vehicles - RA-L 2018**.
Driven by the need for portable and low-cost solutions to relative pose estimation between Unmanned Aerial Vehicles (UAVs), in this work we propose a new framework to track a master UAV in real-time, carrying a known constellation of LED markers, from a slave UAV without any other pose estimation capability.
This setup is especially interesting to aerial manipulation and close-up inspection of structures with low or no texture. Our approach is able to fuse the estimated master's pose with the slave's onboard inertial readings, supporting intermittent communication between the UAVs.

Video:
---------------
<a href="https://www.youtube.com/embed/0auaPt5etHg" target="_blank"><img src="http://img.youtube.com/vi/0auaPt5etHg/0.jpg" 
alt="Mesh" width="240" height="180" border="10" /></a>

Publications
----------------
L. Teixeira and F. Maffra and M. Moos and M. Chli: 
**VI-RPE: Visual-Inertial Relative Pose Estimation for Aerial Vehicles**
IEEE Robotics and Automation Letters (RA-L), Spain, 2018.

    @ARTICLE{Teixeira18ral, 
      author={L. Teixeira and F. Maffra and M. Moos and M. Chli}, 
      journal={IEEE Robotics and Automation Letters}, 
      title={VI-RPE: Visual-Inertial Relative Pose Estimation for Aerial Vehicles}, 
      year={2018}, 
      volume={3}, 
      number={4}, 
      pages={2770-2777}, 
      doi={10.1109/LRA.2018.2837687},
      month={Oct}
}


Disclaimer and License
---------------

The VI-RPE has been tested under the following setups:

* ROS-Indigo and Ubuntu 14.04

This is research code, expect that it changes often and any fitness for a particular purpose is disclaimed.

The source code is released under a BSD License 2.0.


Installation
------
* Requirements:
  * ROS Indigo or Kinect - (http://wiki.ros.org/indigo/Installation/Ubuntu)

* Initialize catkin workspace:
```sh
  $ mkdir -p ~/catkin_ws/src
  $ cd ~/catkin_ws
  $ catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release
  $ catkin init  # initialize your catkin workspace
```
* Get the simulator and dependencies
```sh
  $ cd ~/catkin_ws/src
  $ git clone git@github.com:catkin/catkin_simple.git
  $ git clone git@github.com:ethz-asl/mav_comm.git
  $ git clone git@github.com:ethz-asl/eigen_catkin.git
  $ git clone git@github.com:ethz-asl/glog_catkin.git
  $ git clone git@github.com:ethz-asl/gflags_catkin.git
  $ git clone git@github.com:ethz-asl/eigen_checks.git
  $ git clone git@github.com:ethz-asl/eigen_catkin.git
  $ git clone git@github.com:ethz-asl/minkindr.git
  $ git clone git@github.com:ethz-asl/minkindr_ros.git
  $ git clone git@github.com:ethz-asl/ethzasl_msf.git  

  $ git clone git@github.com:VIS4ROB-lab/pf_monocular_pose_estimator.git
  $ git clone git@github.com:VIS4ROB-lab/visensor_simulator.git

```
* Build the workspace  
```sh
  $ catkin build 
```
