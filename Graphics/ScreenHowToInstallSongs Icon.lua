local gc = Var "GameCommand";
local Name = gc:GetName();
local Index = gc:GetIndex();

local previewWidth = SCREEN_CENTER_X*0.825;
local previewHeight = SCREEN_CENTER_Y;

local t = Def.ActorFrame{
	Name="PreviewFrame";
	InitCommand=cmd(x,SCREEN_CENTER_X*1.5;y,SCREEN_CENTER_Y*0.85);
	OffCommand=cmd(bouncebegin,0.25;addx,SCREEN_CENTER_X);
};

local function TitleMenuItem(text,focused)
	if focused == nil then focused = false; end;
	local textColor = focused and color("#FFFFFF") or color("#888888");
	return LoadFont("Common Normal")..{
		Text=text;
		InitCommand=cmd(zoom,0.45;strokecolor,Color("Outline");diffuse,textColor);
		GainFocusCommand=cmd(stoptweening;decelerate,0.5;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;accelerate,0.5;diffusealpha,0);
	};
end;

local previews = {
	WhereToFind = Def.ActorFrame{
		LoadActor(THEME:GetPathG("_howto","find"))..{
			InitCommand=cmd(zoomto,previewWidth,previewHeight);
			GainFocusCommand=cmd(stoptweening;decelerate,0.5;diffusealpha,1);
			LoseFocusCommand=cmd(stoptweening;accelerate,0.5;diffusealpha,0);
		};
	};
	HowToInstall = Def.ActorFrame{
		LoadActor(THEME:GetPathG("_howto","install"))..{
			InitCommand=cmd(zoomto,previewWidth,previewHeight);
			GainFocusCommand=cmd(stoptweening;decelerate,0.5;diffusealpha,1);
			LoseFocusCommand=cmd(stoptweening;accelerate,0.5;diffusealpha,0);
		};
	};
	AdditionalFolders = Def.ActorFrame{
		LoadActor(THEME:GetPathG("_howto","import"))..{
			InitCommand=cmd(zoomto,previewWidth,previewHeight);
			GainFocusCommand=cmd(stoptweening;decelerate,0.5;diffusealpha,1);
			LoseFocusCommand=cmd(stoptweening;accelerate,0.5;diffusealpha,0);
		};
	};
	ReloadSongs = Def.ActorFrame{
		LoadActor(THEME:GetPathB("ScreenTitleMenu","background/_bg"))..{
			InitCommand=cmd(zoomto,previewWidth,previewHeight;halign,0.5;valign,0.5);
			GainFocusCommand=cmd(stoptweening;decelerate,0.5;diffusealpha,1);
			LoseFocusCommand=cmd(stoptweening;accelerate,0.5;diffusealpha,0);
		};
		LoadFont("Common normal")..{
			InitCommand=cmd(zoom,0.4;maxwidth,(previewWidth*1.6)-8);
			BeginCommand=function(self)
				local song = SONGMAN:GetRandomSong();
				self:settext("Loading songs...\n" .. song:GetGroupName() .. "\n" .. song:GetDisplayFullTitle());
			end;
			GainFocusCommand=cmd(stoptweening;decelerate,0.5;diffusealpha,1);
			LoseFocusCommand=cmd(stoptweening;accelerate,0.5;diffusealpha,0);
		};
	};
	Exit = Def.ActorFrame{
		LoadActor(THEME:GetPathB("ScreenTitleMenu","background/_bg"))..{
			InitCommand=cmd(zoomto,previewWidth,previewHeight;halign,0.5;valign,0.5);
			GainFocusCommand=cmd(stoptweening;decelerate,0.5;diffusealpha,1);
			LoseFocusCommand=cmd(stoptweening;accelerate,0.5;diffusealpha,0);
		};
		LoadActor(THEME:GetPathG("ScreenTitleMenu","logo"))..{
			InitCommand=cmd(x,-18;y,-28;zoom,0.35);
			GainFocusCommand=cmd(stoptweening;decelerate,0.5;diffusealpha,1);
			LoseFocusCommand=cmd(stoptweening;accelerate,0.5;diffusealpha,0);
		};
		LoadActor(THEME:GetPathG("_Normal","Mode"))..{
			InitCommand=cmd(y,36;zoom,1);
			GainFocusCommand=cmd(stoptweening;decelerate,0.5;diffusealpha,1);
			LoseFocusCommand=cmd(stoptweening;accelerate,0.5;diffusealpha,0);
		};
	};
};

t[#t+1] = previews[Name];

t[#t+1] = LoadFont("Common normal")..{
	Name="Explanation";
	--Text="The quick brown fox jumps over the lazy dog ".. Index .." times.";
	Text=Screen.String("Explanation-"..Name);
	-- was x,-(SCREEN_CENTER_X*0.4);y,SCREEN_CENTER_Y*0.525;
	InitCommand=cmd(x,-(SCREEN_CENTER_X*0.8);y,SCREEN_CENTER_Y-70;halign,0;valign,0;zoom,0.65;wrapwidthpixels,(SCREEN_WIDTH*0.55)*1.75;NoStroke;shadowlength,1);
	GainFocusCommand=cmd(stoptweening;decelerate,0.5;diffusealpha,1);
	LoseFocusCommand=cmd(stoptweening;accelerate,0.5;diffusealpha,0);
};

return t;