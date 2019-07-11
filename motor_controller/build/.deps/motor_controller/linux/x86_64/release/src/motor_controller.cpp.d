{
    files = 
    {
        "src/motor_controller.cpp"
    ,   "include/cmd.h"
    ,   "include/cmdRequest.h"
    ,   "include/cmdResponse.h"
    ,   "include/GetVersion.h"
    ,   "src/motor_controller.cpp"
    }
,   values = 
    {
        "/usr/bin/gcc"
    ,   
        {
            "-fvisibility=hidden"
        ,   "-O3"
        ,   "-std=c++11"
        ,   "-Iinclude"
        ,   "-I/opt/ros/kinetic/include"
        ,   "-m64"
        ,   "-I/usr/local/include"
        ,   "-I/usr/include"
        }
    }
}