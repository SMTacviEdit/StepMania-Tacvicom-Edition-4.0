-- StepMania 5 Default Theme Preferences Handler
local function OptionNameString(str)
	return THEME:GetString('OptionNames',str)
end

-- Example usage of new system (not fully implemented yet)
local Prefs =
{
	AutoSetStyle =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GameplayShowStepsDisplay = 
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GameplayShowScore =
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	ShowLotsaOptions =
	{
		Default = true,
		Choices = { OptionNameString('Many'), OptionNameString('Few') },
		Values = { true, false }
	},
	LongFail =
	{
		Default = false,
		Choices = { OptionNameString('Short'), OptionNameString('Long') },
		Values = { false, true }
	},
	NotePosition =
	{
		Default = true,
		Choices = { OptionNameString('Normal'), OptionNameString('Lower') },
		Values = { true, false }
	},
	ComboOnRolls =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	FlashyCombo =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	ComboUnderField =
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	FancyUIBG =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	TimingDisplay =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GameplayFooter =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	ThemeColor =
	{
		Default = "SMTE_Gray",
		Choices = { OptionNameString('Aquamarine'), OptionNameString('Blue'), OptionNameString('Gray'), OptionNameString('Green'), OptionNameString('Orange'), OptionNameString('Pink'), OptionNameString('Purple'), OptionNameString('Red'), OptionNameString('Yellow') },
		Values = { "SMTE_Aquamarine", "SMTE_Blue", "SMTE_Gray", "SMTE_Green", "SMTE_Orange", "SMTE_Pink", "SMTE_Purple", "SMTE_Red", "SMTE_Yellow" }
	},
	LifeBarCovers =
	{
		Default = "Model2",
		Choices = { OptionNameString('Model1'), OptionNameString('Model2'), OptionNameString('ModelGriddie'), OptionNameString('ModelSimple'), OptionNameString('ModelNone') },
		Values = { "Model1", "Model2", "ModelGriddie", "ModelSimple", "ModelNone"}
	},
	Particle =
	{
		Default = "Light",
		Choices = { OptionNameString('Light'), OptionNameString('Arrow'), OptionNameString('SnowFlake') },
		Values = { "Light", "Arrow", "SnowFlake" }
	},
	PreferredMeter =
	{
		Default = "old",
		Choices = { OptionNameString('MeterClassic'), OptionNameString('MeterX'), OptionNameString('MeterPump'), OptionNameString('NoBoss') },
		Values = { "old", "X", "pump", "noboss" }
	},
	ShowBeatBars =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	JudgmentLabel=
	{
		Default = "4SMTE",
		Choices = { OptionNameString('4SMTE'), OptionNameString('SMTE'), OptionNameString('CS'), OptionNameString('D3NEX'), OptionNameString('DDR'), OptionNameString('ITG'), OptionNameString('PIU'), OptionNameString('SM5') },
		Values = { "4SMTE", "SMTE", "CS", "D3NEX", "DDR", "ITG", "PIU", "SM5" }
	},
	AllowDanceSolo =
	{
		Default = false,
		Choices = { OptionNameString('Yes'), OptionNameString('No') },
		Values 	= { true, false }
	},
	ShowDifficultySelection =
	{
		Default = false,
		Choices = { OptionNameString('Show'), OptionNameString('Hide') },
		Values 	= { true, false }
	},
	TitleLogo =
	{
		Default = "smte4.0",
		Choices = { OptionNameString('2.0'), OptionNameString('3.0'), OptionNameString('4.0'), OptionNameString('Respective'), OptionNameString('StepMania') },
		Values = { "smte2.0", "smte3.0", "smte4.0", "smterespective", "stepmania" }
	},
	DanceLogo =
	{
		Default = "ddr",
		Choices = { OptionNameString('D3NEX'), OptionNameString('DDR'), OptionNameString('DDR1998'), OptionNameString('DDR2013'), OptionNameString('DWI'), OptionNameString('ITG') },
		Values = { "d3nex", "ddr", "1998ddr", "2013ddr", "dwi", "itg" }
	},
	StepManiaLogo =
	{
		Default = "legacy",
		Choices = { OptionNameString('Legacy'), OptionNameString('Lambda'), OptionNameString('SM5Preview3'), OptionNameString('SM39'), OptionNameString('SMMAX'), OptionNameString('2SMMAX') },
		Values = { "legacy", "lambda", "sm5preview3", "sm39", "smmax", "2smmax" }
	},
	TitleMenuScrollType =
	{
		Default = "v4.0",
		Choices = { OptionNameString('StepMania'), OptionNameString('SMTE2.0'), OptionNameString('SMTE4.0') },
		Values = { "StepMania", "v2.0", "v4.0" }
	},
	SMVersionInfo =
	{
		Default = true,
		Choices = { OptionNameString('Show'), OptionNameString('Hide') },
		Values 	= { true, false }
	},
}

ThemePrefs.InitAll(Prefs)

function InitUserPrefs()
	local Prefs = {
		OptionRowEditorNoteskin = 'default',
		UserPrefScoringMode = 'DDR Extreme',
        UserPrefSoundPack   = 'default',
		UserPrefProtimingP1 = false,
		UserPrefProtimingP2 = false,
	}
	for k, v in pairs(Prefs) do
		-- kind of xxx
		local GetPref = type(v) == "boolean" and GetUserPrefB or GetUserPref
		if GetPref(k) == nil then
			SetUserPref(k, v)
		end
	end

	-- screen filter
	setenv("ScreenFilterP1",0)
	setenv("ScreenFilterP2",0)
end

function GetProTiming(pn)
	local pname = ToEnumShortString(pn)
	if GetUserPref("ProTiming"..pname) then
		return GetUserPrefB("ProTiming"..pname)
	else
		SetUserPref("ProTiming"..pname,false)
		return false
	end
end

--[[ option rows ]]

-- screen filter
function OptionRowScreenFilter()
	return {
		Name="ScreenFilter",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = { THEME:GetString('OptionNames','Off'), '0.1', '0.2', '0.3', '0.4', '0.5', '0.6', '0.7', '0.8', '0.9', '1.0', },
		LoadSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local filterValue = getenv("ScreenFilter"..pName)
			if filterValue ~= nil then
				local val = scale(tonumber(filterValue),0,1,1,#list )
				list[val] = true
			else
				setenv("ScreenFilter"..pName,0)
				list[1] = true
			end
		end,
		SaveSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local found = false
			for i=1,#list do
				if not found then
					if list[i] == true then
						local val = scale(i,1,#list,0,1)
						setenv("ScreenFilter"..pName,val)
						found = true
					end
				end
			end
		end,
	}
end

-- protiming
function OptionRowProTiming()
	return {
		Name = "ProTiming",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = {
			THEME:GetString('OptionNames','Off'),
			THEME:GetString('OptionNames','On')
		},
		LoadSelections = function(self, list, pn)
			if GetUserPrefB("UserPrefProtiming" .. ToEnumShortString(pn)) then
				local bShow = GetUserPrefB("UserPrefProtiming" .. ToEnumShortString(pn))
				if bShow then
					list[2] = true
				else
					list[1] = true
				end
			else
				list[1] = true
			end
		end,
		SaveSelections = function(self, list, pn)
			local bSave = list[2] and true or false
			SetUserPref("UserPrefProtiming" .. ToEnumShortString(pn), bSave)
		end
	}
end

--[[ end option rows ]]

function OptionRowEditorNoteskin()
	local t = {
		Name = "EditorDefaultNoteskin",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = NOTESKIN:GetNoteSkinNames(),
		LoadSelections = function(self, list, pn)
			local set = true
			local e_pnnote = PREFSMAN:GetPreference("EditorNoteSkinP1") or
				PREFSMAN:GetPreference("EditorNoteSkinP2") or
				THEME:GetMetric("Common", "DefaultNoteSkinName")
			for i, c in ipairs(self.Choices) do
				if string.lower(c) == string.lower(e_pnnote) then
					list[i] = true
					set = false
					break
				end
			end
			if set == true then
				list[1] = true
			end;
		end,
		SaveSelections = function(self, list, pn)
			for i, c in ipairs(self.Choices) do
				if list[i] then
					PREFSMAN:SetPreference("EditorNoteSkinP1", c)
					PREFSMAN:SetPreference("EditorNoteSkinP2", c)
					break
				end
			end
		end,
	}
	return t;
end;