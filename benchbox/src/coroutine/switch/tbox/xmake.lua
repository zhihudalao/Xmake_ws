-- add target
target("coroutine_switch_tbox")

    -- set kind
    set_kind("binary")

    -- add files
    add_files("*.c")

    -- add package
    add_packages("tbox")
