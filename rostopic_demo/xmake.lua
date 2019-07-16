set_project("rostopic_demo")
<<<<<<< HEAD
add_rules("mode.debug", "mode.release")



--add_requires("tbox",{optional = true})
--add_requires("tbox",{debug = true})
add_includedirs("include")
add_repositories("my-repo git@github.com:zhihudalao/xmake-repo.git")
=======
add_rules("mode.debug", "mode.release","mode.check","mode.profile","ros")
--add_requires("tbox",{optional = true})
--add_requires("tbox",{debug = true})
add_includedirs("include")
--add_repositories("my-repo git@github.com:zhihudalao/xmake-repo.git")
>>>>>>> c8d03547031f5d35d3359db16e91c7e866408a68
--add option
option("lib")
    before_check(function(option)
        option:add(find_packages("roscpp"))
        end)
<<<<<<< HEAD
option_end("lib")

option("small")
    set_default(true)
    on_check(function (option)
        -- ...
    end)


option("test")
    add_deps("small")
    set_default(true)
    on_check(function (option)
        if option:dep("small"):enabled() then
            option:enable(false)
        end
    end)
=======
>>>>>>> c8d03547031f5d35d3359db16e91c7e866408a68

-- add target
target("talker")
    set_kind("binary")
    add_files("src/talker.cpp") 
    add_options("lib")

<<<<<<< HEAD
=======

>>>>>>> c8d03547031f5d35d3359db16e91c7e866408a68
target("listener")
    set_kind("binary",m )
    add_files("src/listener.cpp") 
    add_options("lib")

<<<<<<< HEAD
=======


>>>>>>> c8d03547031f5d35d3359db16e91c7e866408a68
