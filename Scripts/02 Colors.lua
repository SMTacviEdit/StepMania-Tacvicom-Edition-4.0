-- xxx: everything below the big line of ...========... needs to be redone
Color = {
-- Color Library
-- These colors are pure swatch colors and are here purely to be used
-- on demand without having to type color("stuff") or dig through 
-- a palette to get the color you want.
	Black		=	color("0,0,0,1"),
	White		=	color("1,1,1,1"),
	Red			=	color("#ff0000"),
	DarkRed		=	color("#400000"),
	SMTE_Red	=	color("#ff0000"),
	Blue		=	color("#0000ff"),
	DarkBlue	=	color("#000040"),
	SMTE_Blue	=	color("#0000ff"),
	Dark		=	color("#404040"),
	DarkDark	=	color("#101010"),
	SMTE_Dark	=	color("#404040"),
	Green		=	color("#00ff00"),
	DarkGreen	=	color("#004000"),
	SMTE_Green	=	color("#00ff00"),
	Yellow		=	color("#ffff00"),
	DarkYellow	=	color("#404000"),
	SMTE_Yellow	=	color("#ffff00"),
	Orange		=	color("#ff8000"),
	DarkOrange	=	color("#402000"),
	SMTE_Orange	=	color("#ff8000"),
	Purple		=	color("#ff00ff"),
	DarkPurple	=	color("#400040"),
	SMTE_Purple	=	color("#ff00ff"),
	Pink		=	color("#ff4080"),
	DarkPink	=	color("#802040"),
	SMTE_Pink	=	color("#ff4080"),
	Gray		=	color("#808080"),
	DarkGray	=	color("#202020"),
	SMTE_Gray	=	color("#808080"),
	Outline		=	color("0,0,0,0.5"),
	Invisible	=	color("1,1,1,0"),
	Stealth		=	color("0,0,0,0"),
-- Android Design Stencil Colors
-- https://developer.android.com/design/style/color.html
	HoloBlue		= color("#33B5E5"),
	HoloDarkBlue	= color("#0099CC"),
	HoloPurple		= color("#AA66CC"),
	HoloDarkPurple	= color("#9933CC"),
	HoloGreen		= color("#99CC00"),
	HoloDarkGreen	= color("#669900"),
	HoloOrange		= color("#FFBB33"),
	HoloDarkOrange	= color("#FF8800"),
	HoloRed			= color("#FF4444"),
	HoloDarkRed		= color("#CC0000"),
-- Color Functions
-- These functions alter colors in a certain way so that you can make
-- new ones without having to copy a color or find a new one.
--[[     Brightness(fInput)
    Hue(hInput)
    Saturation(hInput)
    Alpha(hInput)
    HSV(iHue,fSaturation,fValue or any other overload) --]]
	Alpha = function(c, fAlpha)
		return { c[1],c[2],c[3], fAlpha }
	end
}

setmetatable(Color, { __call = function(self, c) return self[c] end })

-- Remapped Color Module, since some themes are crazy
-- Colors = Color;

ModeIconColors = {
	Beginner	= color("#0000ff"),	-- blue
	Easy		= color("#e0e000"),	-- yellow
	Basic		= color("#e0e000"), -- yellow
	Normal		= color("#808080"),	-- gray
	Standard	= color("#e00000"), -- red
	Maniac		= color("#00e000"),	-- green
	Challenge	= color("#c000c0"),	-- purple
	Ultimate	= color("#808080"), -- gray
	Edit		= color("#808080"), -- gray
	Rave		= color("#ff00aa"), -- pink
	Nonstop		= color("#ff9a00"), -- orange
	Oni			= color("#1c77de"), -- cyan
	Survival	= color("#ff9a00"), -- orange
	Endless		= color("#ffffff"), -- white
}

GameColor = {
	PlayerColors = {
		PLAYER_1 = color("#4444ff"),
		PLAYER_2 = color("#ff4444"),
	},
	PlayerDarkColors = {
		PLAYER_1 = color("#2222aa"),
		PLAYER_2 = color("#aa2222"),
	},
	Difficulty = {
		--[[ These are for 'Custom' Difficulty Ranks. It can be very  useful
		in some cases, especially to apply new colors for stuff you
		couldn't before. (huh? -aj) ]]
		Beginner	= color("#0000ff"),			-- blue
		Easy		= color("#e0e000"),			-- yellow
		Medium		= color("#e00000"),			-- red
		Hard		= color("#00e000"),			-- green
		Challenge	= color("#c000c0"),			-- purple
		Edit		= color("#808080"),			-- gray
		Couple		= color("#ed0972"),			-- hot pink
		Routine		= color("#ff9a00"),			-- orange
		--[[ These are for courses, so let's slap them here in case someone
		wanted to use Difficulty in Course and Step regions. ]]
		Difficulty_Beginner	= color("#0000ff"),		-- blue
		Difficulty_Easy		= color("#e0e000"),		-- yellow
		Difficulty_Medium	= color("#e00000"),		-- red
		Difficulty_Hard		= color("#00e000"),		-- green
		Difficulty_Challenge	= color("#c000c0"),		-- purple
		Difficulty_Edit	= color("#808080"),			-- gray
		Difficulty_Couple	= color("#ed0972"),		-- hot pink
		Difficulty_Routine	= color("#ff9a00")		-- orange
	},
	Stage = {
		Stage_1st	= color("#0098dd"),
		Stage_2nd	= color("#ca652e"),
		Stage_3rd	= color("#ffc600"),
		Stage_4th	= color("#2ffff8"),
		Stage_5th	= color("#7030a0"),
		Stage_6th	= color("#91d050"),
		Stage_Next	= color("#73ff00"),
		Stage_Final	= color("#ff0707"),
		Stage_Extra1	= color("#ff0000"),
		Stage_Extra2	= color("#aa0000"),
		Stage_Nonstop	= color("#FFFFFF"),
		Stage_Oni	= color("#FFFFFF"),
		Stage_Endless	= color("#FFFFFF"),
		Stage_Event	= color("#FFFFFF"),
		Stage_Demo	= color("#FFFFFF")
	},
	Judgment = {
		JudgmentLine_W1		= color("#bfeaff"),
		JudgmentLine_W2		= color("#ffff00"),
		JudgmentLine_W3		= color("#00ff00"),
		JudgmentLine_W4		= color("#0000ff"),
		JudgmentLine_W5		= color("#ba3fd2"),
		JudgmentLine_Held	= color("#FFFFFF"),
		JudgmentLine_Miss	= color("#ff0000"),
		JudgmentLine_MaxCombo	= color("#ffffff")
	},
}

GameColor.Difficulty["Crazy"] = GameColor.Difficulty["Hard"]
GameColor.Difficulty["Freestyle"] = GameColor.Difficulty["Medium"]
GameColor.Difficulty["Nightmare"] = GameColor.Difficulty["Challenge"]
GameColor.Difficulty["HalfDouble"] = GameColor.Difficulty["Medium"]

--[[ Fallbacks ]]
function BoostColor( cColor, fBoost )
	local c = cColor
	return { c[1]*fBoost, c[2]*fBoost, c[3]*fBoost, c[4] }
end

function ColorLightTone(c)
	return { c[1]+(c[1]/2), c[2]+(c[2]/2), c[3]+(c[3]/2), c[4] }
end

function ColorMidTone(c)
	return { c[1]/1.5, c[2]/1.5, c[3]/1.5, c[4] }
end

function ColorDarkTone(c)
	return { c[1]/2, c[2]/2, c[3]/2, c[4] }
end

local pn_to_color_name= {[PLAYER_1]= "PLAYER_1", [PLAYER_2]= "PLAYER_2"}
local default_color= color("1,1,1,1")

function PlayerColor( pn )
	if not GameColor or not GameColor.PlayerColors then
		return default_color
	end
	return GameColor.PlayerColors[pn_to_color_name[pn]] or default_color
end

function PlayerScoreColor( pn )
	return PlayerColor( pn );
end

function PlayerDarkColor( pn )
	if not GameColor then return default_color end
	if not GameColor.PlayerDarkColors then return PlayerColor(pn) end
	return GameColor.PlayerDarkColors[pn_to_color_name[pn]] or default_color
end

local function GameColorDifficultyWrapper(diff)
	assert(GameColor.Difficulty[diff], "GameColor:  There is no entry in GameColor.Difficulty for CustomDifficulty '" .. tostring(diff) .. "'.")
	return GameColor.Difficulty[diff]
end

function CustomDifficultyToColor( sCustomDifficulty )
	return GameColorDifficultyWrapper(sCustomDifficulty)
end

function CustomDifficultyToDarkColor( sCustomDifficulty ) 
	local c = GameColorDifficultyWrapper(sCustomDifficulty)
	return { c[1]/2, c[2]/2, c[3]/2, c[4] }
end

function CustomDifficultyToLightColor( sCustomDifficulty ) 
	local c = GameColorDifficultyWrapper(sCustomDifficulty)
	return { scale(c[1],0,1,0.5,1), scale(c[2],0,1,0.5,1), scale(c[3],0,1,0.5,1), c[4] }
end

function StepsOrTrailToColor(StepsOrTrail)
	return CustomDifficultyToColor( StepsOrTrailToCustomDifficulty(stepsOrTrail) )
end

local stage_default= color("#000000")
function StageToColor( stage )
	if not GameColor or not GameColor.Stage then return stage_default end
	return GameColor.Stage[stage] or stage_default
end

function StageToStrokeColor( stage )
	local c = StageToColor(stage)
	return { c[1]/2, c[2]/2, c[3]/2, c[4] }
end

function JudgmentLineToColor( i )
	if not GameColor or not GameColor.Judgment then return stage_default end
	return GameColor.Judgment[i] or stage_default
end

function JudgmentLineToStrokeColor( i )
	local c = JudgmentLineToColor(i)
	return { c[1]/2, c[2]/2, c[3]/2, c[4] }
end

--[[==========================================================================]]

-- color utilities
function HasAlpha(c)
	if c[4] then return c[4] end
	return 1
end

-- ColorToHex(c)
-- Takes in a normal color("") and returns the hex representation.
function ColorToHex(c)
	local r = c[1]
	local g = c[2]
	local b = c[3]
	local a = HasAlpha(c)

	local function hex(value)
		return ("%02X"):format(value)
	end

	local rX = hex( scale(r, 0, 1, 0, 255) )
	local gX = hex( scale(g, 0, 1, 0, 255) )
	local bX = hex( scale(b, 0, 1, 0, 255) )
	local aX = hex( scale(a, 0, 1, 0, 255) )

	return rX .. gX .. bX .. aX
end

-- HSV utilities (adapted from http://www.cs.rit.edu/~ncs/color/t_convert.html)

-- HSVToColor(hsv)
-- Converts a set of HSV values to a color. hsv is a table.
-- See also: HSV(h, s, v)
function HSVToColor(hsv)
	local i
	local f, q, p, t
	local r, g, b
	local h, s, v

	local a

	s = hsv.Sat
	v = hsv.Value

	if hsv.Alpha then
		a = hsv.Alpha
	else
		a = 0
	end

	if s == 0 then
		return { v, v, v, a }
	end

	h = hsv.Hue / 60

	i = math.floor(h)
	f = h - i
	p = v * (1-s)
	q = v * (1-s*f)
	t = v * (1-s*(1-f))

	if i == 0 then		return { v, t, p, a }
	elseif i == 1 then	return { q, v, p, a }
	elseif i == 2 then	return { p, v, t, a }
	elseif i == 3 then	return { p, q, v, a }
	elseif i == 4 then	return { t, p, v, a }
	else				return { v, p, q, a }
	end
end

-- quick (assumes alpha = 1)
function HSV(h, s, v)
	local t = {
		Hue = h,
		Sat = s,
		Value = v,
		Alpha = 1
	}
	return HSVToColor(t)
end
-- full
function HSVA(h, s, v, a)
	local t = {
		Hue = h,
		Sat = s,
		Value = v,
		Alpha = a
	}
	return HSVToColor(t)
end

function HSVToHex(hsv)
	return ColorToHex( HSVToColor(hsv) )
end

-- ColorToHSV(c)
-- Takes in a normal color("") and returns a table with the HSV values.
function ColorToHSV(c)
	local r = c[1]
	local g = c[2]
	local b = c[3]
	-- alpha requires error checking sometimes.
	local a = HasAlpha(c)

	local h = 0
	local s = 0
	local v = 0

	local min = math.min( r, g, b )
	local max = math.max( r, g, b )
	v = max

	local delta = max - min

	-- xxx: how do we deal with complete black?
	if min == 0 and max == 0 then
		-- we have complete darkness; make it cheap.
		return {
			Hue = 0,
			Sat = 0,
			Value = 0,
			Alpha = a
		}
	end

	if max ~= 0 then
		s = delta / max -- rofl deltamax :|
	else
		-- r = g = b = 0; s = 0, v is undefined
		s = 0
		h = -1
		return {
			Hue = h,
			Sat = s,
			Value = v,
			Alpha = 1
		}
	end

	if r == max then
		h = ( g - b ) / delta     -- yellow/magenta
	elseif g == max then
		h = 2 + ( b - r ) / delta -- cyan/yellow
	else
		h = 4 + ( r - g ) / delta -- magenta/cyan
	end

	h = h * 60 -- degrees

	if h < 0 then
		h = h + 360
	end

	return {
		Hue = h,
		Sat = s,
		Value = v,
		Alpha = a
	}
end

function Hue(color,newHue)
	local c = ColorToHSV(color)
	-- handle wrapping
	if newHue < 0 then
		newHue = 360 + newHue
	elseif newHue > 360 then
		--newHue = math.mod(newHue, 360); -- ?? untested
		newHue = newHue - 360
	end
	c.Hue = newHue
	return HSVToColor(c)
end;
function Saturation(color,percent)
	local c = ColorToHSV(color)
	-- error checking
	if percent < 0 then
		percent = 0.0
	elseif percent > 1 then
		percent = 1.0
	end
	c.Sat = percent
	return HSVToColor(c)
end

function Brightness(color,percent)
	local c = ColorToHSV(color)
	-- error checking
	if percent < 0 then
		percent = 0.0
	elseif percent > 1 then
		percent = 1.0
	end
	c.Value = percent
	return HSVToColor(c)
end

function Alpha(color,percent)
	local c = ColorToHSV(color);
	-- error checking
	if percent < 0 then
		percent = 0.0;
	elseif percent > 1 then
		percent = 1.0;
	end;
	c.Alpha = percent;
	return HSVToColor(c);
end;
