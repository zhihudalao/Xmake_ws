-- add modes: debug and release 
add_rules("mode.debug", "mode.release")
add_repositories("boost https://github.com/boostorg/boost.git")
add_repositories("myrepo https://github.com/xmake-io/xmake-repo.git")
add_repositories("myrepo xmake-repo")
target("test")
    set_kind("binary")
    add_files("src/*.c") 
    add_packages("boost")
    -- enable to build this target?
    --add_repositories("boost boost")
    
    before_build(function (target)
        target:set("enabled", has_package("boost") and true or false)
    end)

