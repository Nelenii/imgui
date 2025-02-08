project "ImGui"
    
	kind "StaticLib"
	language "C++"
	targetdir ("binaries/" .. outputDirectory .. "/%{prj.name}")
	objdir ("intermediate/" .. outputDirectory .. "/%{prj.name}")
	
	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h"
	}
	
	filter "system:windows"
		staticruntime "On"
		systemversion "latest"
		cppdialect "C++17"

	filter { "system:windows", "configurations:Debug" }
		runtime "Debug"
		symbols "on"
		
	filter { "system:windows", "configurations:Release" }
		buildoptions "/MT"
		runtime "Release"
		optimize "on"

	filter { "system:windows", "configurations:Distribution" }
		buildoptions "/MT"
		runtime "Release"
		optimize "on"
