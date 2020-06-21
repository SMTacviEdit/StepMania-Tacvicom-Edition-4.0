return LoadFont("Common","Normal")..{
	InitCommand=cmd(horizalign,center;diffuse,color("1,1,1,1");strokecolor,color("1,0.75,0,0.6");zoom,1;maxwidth,SCREEN_WIDTH;queuecommand,"Set";);
	SetCommand=cmd(settext, string.format("%04i/%02i/%02i   %02i:%02i:%02i", Year(), MonthOfYear()+1,DayOfMonth(), Hour(), Minute(), Second());sleep,1;queuecommand,"Set";);
};