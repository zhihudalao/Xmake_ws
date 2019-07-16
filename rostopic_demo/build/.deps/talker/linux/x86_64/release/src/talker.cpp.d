{
    files = 
    {
        "src/talker.cpp"
    ,   "include/gps.h"
    ,   "src/talker.cpp"
    }
,   values = 
    {
        "/usr/bin/gcc"
    ,   
        {
            "-fvisibility=hidden"
        ,   "-O3"
        ,   "-Iinclude"
        ,   "-I/opt/ros/kinetic/include"
        ,   "-m64"
        ,   "-I/usr/local/include"
        ,   "-I/usr/include"
        }
    }
}