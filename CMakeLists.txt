cmake_minimum_required(VERSION 2.8.3)
project(vi_rpe)

add_definitions(-std=c++11)

find_package(catkin_simple REQUIRED)

catkin_simple()


cs_add_executable(vi_rpe src/vi_rpe.cc src/vi_rpe_node.cc include/vi_rpe/vi_rpe.h)
cs_add_executable(waypoint_planner src/waypoint_planner.cc)

cs_install()

cs_export()
