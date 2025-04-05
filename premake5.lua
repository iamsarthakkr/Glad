project "Glad"
    language "C"
    kind "StaticLib"
    staticruntime "On"

    targetdir "lib"
    objdir "lib/int"

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
        systemversion "15.0" -- Replace with your macOS version
        defines { "PLATFORM_MAC" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"