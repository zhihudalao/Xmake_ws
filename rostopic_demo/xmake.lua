set_project("rostopic_demo")
add_rules("mode.debug", "mode.release","mode.check","mode.profile","ros")
--add_requires("tbox",{optional = true})
--add_requires("tbox",{debug = true})
add_includedirs("include")
--add_repositories("my-repo git@github.com:zhihudalao/xmake-repo.git")
--add option
option("lib")
    before_check(function(option)
        option:add(find_packages("roscpp"))
        end)

-- add target
target("talker")
    set_kind("binary")
    add_files("src/talker.cpp") 
    add_options("lib")


target("listener")
    set_kind("binary",m )
    add_files("src/listener.cpp") 
    add_options("lib")



