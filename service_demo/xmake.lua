set_project("service_demo")

option("lib")
    before_check(function(option)
        option:add(find_packages("roscpp"))
        end)
option_end()
add_options("lib")

add_includedirs("include")

target("client")
    set_kind("binary")
    add_files("src/client.cpp")


target("server")
    set_kind("binary")
    add_files("src/server.cpp")

