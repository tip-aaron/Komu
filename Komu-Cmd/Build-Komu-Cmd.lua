project("Komu-Cmd")
kind("ConsoleApp")
language("C++")
cppdialect("C++20")
targetdir("Binaries/%{cfg.buildcfg}")
staticruntime("off")

files({ "Source/**.h", "Source/**.cpp", "Source/**.hpp", "Source/**.c", "Source/**.cxx" })

includedirs({ "Source", "../Komu-Core/Source" })

links({ "Komu-Core" })

targetdir("../Binaries/" .. OutputDir .. "/%{prj.name}")
objdir("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

filter("system:windows")
systemversion("latest")
defines({})

filter("configurations:debug")
defines({ "DEBUG" })
runtime("Debug")
symbols("On")

filter("configurations:release")
defines({ "RELEASE" })
optimize("On")
symbols("On")

filter("configurations:dist")
defines({ "DIST" })
runtime("Release")
optimize("On")
symbols("Off")
