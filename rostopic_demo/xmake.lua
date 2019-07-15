set_project("rostopic_demo")
add_rules("mode.debug", "mode.release")



--add_requires("tbox",{optional = true})
--add_requires("tbox",{debug = true})
add_includedirs("include")
add_repositories("my-repo git@github.com:zhihudalao/xmake-repo.git")
--add option
option("lib")
    before_check(function(option)
        option:add(find_packages("roscpp"))
        end)
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

-- add target
target("talker")
    set_kind("binary")
    add_files("src/talker.cpp") 
    add_options("lib")

target("listener")
    set_kind("binary",m )
    add_files("src/listener.cpp") 
    add_options("lib")

