--The name of the mod displayed in the 'mods' screen.
name = "    A全球定位(开发版)"
--A description of the mod.
description = "默认情况下，记分板打开时显示玩家箭头，全局显示小地图上的玩家图标，营火或炭火也显示相同的图标。"

--Who wrote this awesome mod?
author = "rezecib, Sarcen"

--A version number so you can ask people if they are running an old version of your mod.
--In DST this is also used to determine compatibility for joining servers
version = "1.7.3"

forumthread = ""

--This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 10

--Can specify a custom icon for this mod!
icon_atlas = "GlobalPositionsIcon.xml"
icon = "GlobalPositionsIcon.tex"

--Specify compatibility with versions of the game!
dont_starve_compatible = true
reign_of_giants_compatible = true
dst_compatible = true

--This lets clients know if they need to get the mod from the Steam Workshop to join the game
all_clients_require_mod = true

--This determines whether it causes a server to be marked as modded (and shows in the mod list)
client_only_mod = false

--This determines when this mod is loaded relative to other mods
--#rezecib I set this to -1000 to make it load last, or at least later than character mods
priority = -1000

--This lets people search for servers with this mod by these tags
server_filter_tags = {"global player icons", "global player indicators", "smoke signals"}

configuration_options =
{
	{
		name = "SHOWPLAYERSOPTIONS",
		label = "玩家指示灯",
		hover = "玩家越过屏幕边缘时显示箭头。（默认）只在打开计分板时显示玩家箭头",
		options =	{
						{description = "总是显示", data = 3},
						{description = "计分板时显示（默认）", data = 2},
						{description = "不显示", data = 1},
					},
		default = 2,
	},
	{
		name = "SHOWPLAYERICONS",
		label = "玩家图标",
		hover = "显示（默认）将在地图上显示玩家的地图图标。",
		options =	{
						{description = "显示（默认）", data = true},
						{description = "隐藏", data = false},
					},
		default = true,
	},
	{
		name = "FIREOPTIONS",
		label = "火堆",
		hover = "用像玩家一样的指示器显示火焰。" ,
		options =	{
						{description = "总是显示", data = 1},
						{description = "只在加入木炭时（默认）", data = 2},
						{description = "不显示", data = 3},
					},
		default = 2,
	},
	{
		name = "SHOWFIREICONS",
		label = "火灾",
		hover = "在地图上全局显示火灾（仅当火灾设置为显示时才有效）." ,
		options =	{
						{description = "开启（默认）", data = true},
						{description = "关闭", data = false},
					},
		default = true,
	},
	{
		name = "SHAREMINIMAPPROGRESS",
		label = "地图共享",
		hover = "（默认）当其他玩家探索世界时，您的地图也将更新。" .. 
				"\n只有当玩家或图标设置为显示时，此选项才起作用。",
		options =	{
						{description = "开启（默认）", data = true},
						{description = "关闭", data = false},
					},
		default = true,
	},
	{
		name = "OVERRIDEMODE",
		label = "荒野覆盖",
		hover = "（默认）使其在荒野模式下，火堆设置为总是显示，玩家图标和玩家指示器被禁用。" ..
				"\n关闭后，它不会显示玩家，但所有的火将烟雾和可见。",
		options =	{
						{description = "开启", data = true},
						{description = "关闭（默认）", data = false},
					},
		default = false,
	},
	{
		name = "ENABLEPINGS",
		label = "地图标记",
		hover = "（默认设置）允许玩家标记地图（alt键+鼠标右键）",
		options =	{
						{description = "开启（默认）", data = true},
						{description = "关闭", data = false},
					},
		default = true,
	},
}