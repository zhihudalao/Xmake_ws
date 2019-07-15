set_project("motor_controller")
--set_version("v2.2.7+201907091120")
--set_xmakever("2.1.0")
add_rules("mode.debug", "mode.release")
set_languages("c99","cxx11")

--set_modes("debug","release")
--add_requires("tbox 1.6.*","zlib")

--option("test")
    --add_runenvs("ROS","/opt/ros/kinetic/bin")
    --add_cflags("-g","-O2","DDEBUG")
    --add_packages("tbox","zlib")
    --add_headerfiles("include/*.h")
    --set_strip("all")
    --set_warnings("all","error")
    --set_optimize("fastest")

    --set_targetdir("~/1_test/xmake/rostopic_demo/build")
    --set_objectdir("$(buildir)/.objs")

    --set_dependir("$(buildir)/.deps")


--target(roscpp)
    --set_kind("static")
    --add_files("*.h")
option("lib")
    set_showmenu(true)
    before_check(function(option)
        option:add(find_packages("roscpp", "rospy", "std_msgs",
             "message_generation", "serial", "tf", "nav_msgs"))
        end)



add_syslinks("pthread")

--add_requires("roscpp","message_generation","rospy","std_msgs")

target("motor_controller")    
    set_kind("binary")
    add_options("lib")
    add_includedirs("include")
    add_files("src/*.cpp")

target_end()
