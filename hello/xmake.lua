-- define rule: markdown
rule("markdown")
    set_extensions(".md", ".markdown")
    on_build(function (target, sourcefile)
        os.cp(sourcefile, path.join(target:targetdir(), path.basename(sourcefile) .. ".html"))
    end)

-- define rule: man
rule("man")
    add_imports("core.project.rule")
    on_build(function (target, sourcefile)
        rule.build("markdown", target, sourcefile)
    end)

-- define rule: c code
rule("c code")
    add_imports("core.tool.compiler")
    on_build(function (target, sourcefile)
        local objectfile = os.tmpfile() .. ".o"
        compiler.compile(sourcefile, objectfile, {sourcekind = "cc"})
        table.insert(target:objectfiles(), objectfile)
    end)

-- define rule: stub
rule("stub")
    on_build(function (target, sourcefile)
        print("on_build: %s", sourcefile)
    end)
    on_clean(function (target, sourcefile)
        print("on_clean: %s", sourcefile)
    end)
    on_install(function (target, sourcefile)
        print("on_install: %s", sourcefile)
    end)
    on_uninstall(function (target, sourcefile)
        print("on_uninstall: %s", sourcefile)
    end)
    on_package(function (target, sourcefile)
        print("on_package: %s", sourcefile)
    end)

-- define target
target("test")

    -- set kind
    set_kind("binary")

    -- add rules
    --add_rules("markdown")

    -- add files
    add_files("src/*.c") 
    --add_files("src/man/*.in",   {rule = "man"})
    --add_files("src/index.md")
    --add_files("src/test.c.in",  {rule = "c code"})
    --add_files("src/empty.stub", {rule = "stub"})