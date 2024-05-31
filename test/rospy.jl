import PyCall

#Test basic rospy interactions
init_node("jltest", anonymous=true)

#Parameters
#TODO @test length(RobotOS.get_param_names()) > 0
#TODO @test has_param("rosdistro")
#TODO @test chomp(get_param("rosdistro")) in ["kinetic", "melodic", "noetic"]
#TODO @test ! has_param("some_param")
#TODO @test_throws KeyError get_param("some_param")
#TODO @test_throws KeyError delete_param("some_param")
#TODO @test get_param("some_param", 1.1) == 1.1
#TODO @test get_param("some_param", "some_val") == "some_val"
#TODO set_param("some_param", "val")
#TODO @test get_param("some_param", 1.1) == "val"
#TODO delete_param("some_param")
#TODO @test ! has_param("some_param")

#Really just running this stuff for coverage

#Logging
logdebug("testing: debug")
loginfo("testing: info")
logwarn("testing: warn")
logerr("testing: err")
logfatal("testing: fatal")
@test ! is_shutdown()

#Generic stuff
#TODO @test startswith(RobotOS.get_name()[2:end], "jltest")
@test RobotOS.get_namespace() == "/"
#TODO RobotOS.get_node_uri()
#TODO RobotOS.get_caller_id()
RobotOS.get_published_topics()
#TODO RobotOS.get_ros_root()

#Issue 73 - Corruption of Python sys.argv
PyCall.py"""
import argparse
argparse.ArgumentParser()
"""
