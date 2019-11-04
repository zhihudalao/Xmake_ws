{
    files = 
    {
        "src/motor_controller.cpp"
    ,   "include/i/cmd.h"
    ,   "include/i/cmdRequest.h"
    ,   "include/i/cmdResponse.h"
    ,   "src/GetVersion.h"
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
        ,   "-Iinclude/i"
        ,   "-I/opt/ros/kinetic/include"
        ,   "-m64"
        ,   "-I/usr/local/include"
        ,   "-I/usr/include"
        }
    }
}