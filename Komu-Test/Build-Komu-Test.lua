project("Komu-Test")
kind("ConsoleApp")
language("c++")
cppdialect("c++20")
staticruntime("off")

targetdir("../Binaries/" .. OutputDir .. "/%{prj.name}")
objdir("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

includedirs({
	"../External/googletest/googletest/include",
	"../External/googletest/googletest",
	"../Komu-Core/Source",
})

files({
	"Source/**.cpp",
	"Source/**.hpp",
	"Source/*.h",
	"Source/*.c",
	"Source/*.cxx",
})

links({ "Komu-Core", "gtest", "gtest_main" })

filter("system:windows")
systemversion("latest")
defines({})

filter("system:Linux")
pic("On")
buildoptions({
	"-fno-exceptions",
	"-Wall",
	"-Wshadow",
	"-Wno-error=dangling-else",
	"-Wextra",
	"-Wno-unused-parameter",
	"-Wno-missing-field-initializers",
})

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

project("gtest")
kind("StaticLib")
language("c++")
cppdialect("c++20")

targetdir("../Binaries/" .. OutputDir .. "/%{prj.name}")
objdir("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

files({
	"../External/googletest/googletest/src/gtest-all.cc",
})

includedirs({
	"../External/googletest/googletest/include",
	"../External/googletest/googletest",
})

project("gtest_main")
kind("StaticLib")
language("c++")
cppdialect("c++20")
staticruntime("off")

targetdir("../Binaries/" .. OutputDir .. "/%{prj.name}")
objdir("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

files({
	"../External/googletest/googletest/src/gtest_main.cc",
})

includedirs({
	"../External/googletest/googletest/include",
	"../External/googletest/googletest",
})

links({ "gtest" })

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
