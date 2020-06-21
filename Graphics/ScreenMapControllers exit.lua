return LoadFont("Common Normal") .. {
	Text=ScreenString("Exit");
	InitCommand=cmd(x,SCREEN_CENTER_X;zoom,1.25;shadowlength,0;diffuse,color("#FF0000");NoStroke);
	OnCommand=cmd(diffusealpha,0;decelerate,0.5;diffusealpha,1);
	OffCommand=cmd(stoptweening;accelerate,0.3;diffusealpha,0;queuecommand,"Hide");
	HideCommand=cmd(visible,false);

	GainFocusCommand=cmd(diffuseshift;effectcolor1,color("#FFFFFF");effectcolor2,color("#FFFFFF"););
	LoseFocusCommand=cmd(stopeffect);
};
