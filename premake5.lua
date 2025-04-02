project "Glad"
    kind "StaticLib"
    language "C"
    location "%{wks.location}/build"
    targetdir "%{wks.location}/bin/%{cfg.buildcfg}"
    objdir "%{wks.location}/bin-int/%{cfg.buildcfg}"
    staticruntime "On"

    files {
        "include/**.h",
        "src/**.c"
    }

    includedirs {
        "include"
    }

    filter "system:windows"
        defines { "PLATFORM_WINDOWS" }

    filter "system:linux"
        defines { "PLATFORM_LINUX" }

    filter "system:macosx"
        defines { "PLATFORM_MAC" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"