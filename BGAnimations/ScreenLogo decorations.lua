local t = LoadFallbackB();

t[#t+1] = Def.ActorFrame {};
t[#t+1] = StandardDecorationFromFileOptional("Footer","Footer");
t[#t+1] = StandardDecorationFromFileOptional("Logo","Logo");
t[#t+1] = LoadActor( THEME:GetPathB("_Arcade","decorations") );

t[#t+1] = Def.Quad {
		InitCommand=cmd(horizalign,right;vertalign,top;x,SCREEN_RIGHT;y,SCREEN_TOP+7);
		OnCommand=cmd(diffuse,Color.Black;diffusealpha,0.75;zoomto,256,20;fadeleft,1);
};

t[#t+1] = LoadFont("Common Normal")..{
	Name="Clock";
	InitCommand=cmd(x,SCREEN_RIGHT-16;y,16;horizalign,right;diffuse,color("1,1,1,1");strokecolor,color("1,0.75,0,0.6");zoom,1;maxwidth,SCREEN_WIDTH;queuecommand,"Set";shadowlength,2;);
	SetCommand=cmd(settext, string.format("%04i/%02i/%02i   %02i:%02i:%02i", Year(), MonthOfYear()+1,DayOfMonth(), Hour(), Minute(), Second());sleep,1;queuecommand,"Set";);
};

return t;