{
    files = 
    {
        "src/server.cpp"
    ,   "include/Greeting.h"
    ,   "include/GreetingRequest.h"
    ,   "include/GreetingResponse.h"
    ,   "src/server.cpp"
    }
,   values = 
    {
        "/usr/bin/gcc"
    ,   
        {
            "-Iinclude"
        ,   "-I/opt/ros/kinetic/include"
        ,   "-m64"
        ,   "-I/usr/local/include"
        ,   "-I/usr/include"
        }
    }
}