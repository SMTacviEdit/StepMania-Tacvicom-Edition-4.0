function DanceHighScores()
	local screen = {
	"ScreenDanceSingleHighScores",
	"ScreenDanceDoubleHighScores",
	"ScreenDanceSoloHighScores",
	"ScreenDanceCoupleHighScores",
	"ScreenDanceRoutineHighScores",
	}
	return screen[math.random(#screen)]
end

function PumpHighScores()
	local screen = {
	"ScreenPumpSingleHighScores",
	"ScreenPumpDoubleHighScores",
	"ScreenPumpHalfDoubleHighScores",
	"ScreenPumpCoupleHighScores",
	"ScreenPumpRoutineHighScores",
	}
	return screen[math.random(#screen)]
end

function TechnoHighScores()
	local screen = {
	"ScreenTechnoSingle4HighScores",
	"ScreenTechnoSingle5HighScores",
	"ScreenTechnoSingle8HighScores",
	"ScreenTechnoDouble4HighScores",
	"ScreenTechnoDouble5HighScores",
	"ScreenTechnoDouble8HighScores",
	}
	return screen[math.random(#screen)]
end

function KickboxHighScores()
	local screen = {
	"ScreenKickboxHumanHighScores",
	"ScreenKickboxQuadarmHighScores",
	"ScreenKickboxInsectHighScores",
	"ScreenKickboxArachnidHighScores",
	}
	return screen[math.random(#screen)]
end