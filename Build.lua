-- premake5.lua
workspace("Komu")
architecture("x64")
configurations({ "Debug", "Release", "Dist" })
startproject("Komu-Cmd")

filter("system:windows")
buildoptions({ "/EHsc", "/Zc:preprocessor", "/Zc:_cplusplus" })

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group("Libraries")
include("Komu-Core/Build-Komu-Core.lua")
group("Test")
include("Komu-Test/Build-Komu-Test.lua")

include("Komu-Cmd/Build-Komu-Cmd.lua")
