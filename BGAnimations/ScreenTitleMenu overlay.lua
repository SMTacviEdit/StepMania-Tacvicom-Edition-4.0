local t = Def.ActorFrame {}

t[#t+1] = LoadFont("Common Normal")..{
	Name="TacvicomInfo";
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-16;diffuse,color("1,1,1,1");strokecolor,color("1,0.75,0,0.6");zoom,0.625;maxwidth,SCREEN_WIDTH;queuecommand,"Set";shadowlength,2;);
	Text=THEME:GetString("ScreenTitleMenu","TacvicomInfo");
};

return t