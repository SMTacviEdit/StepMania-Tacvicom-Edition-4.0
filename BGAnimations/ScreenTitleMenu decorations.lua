InitUserPrefs();

local t = Def.ActorFrame {}

t[#t+1] = Def.Quad {
		InitCommand=cmd(horizalign,left;vertalign,top;x,SCREEN_LEFT;y,SCREEN_TOP+6);
		OnCommand=cmd(diffuse,Color.Black;diffusealpha,0.75;zoomto,300,24;faderight,1);
};

t[#t+1] = Def.Quad {
		InitCommand=cmd(horizalign,left;vertalign,top;x,SCREEN_LEFT;y,SCREEN_TOP+30);
		Condition=ThemePrefs.Get("TitleLogo")=="stepmania";
		OnCommand=cmd(diffuse,Color.Black;diffusealpha,0.75;zoomto,300,24;faderight,1);
};

t[#t+1] = Def.Quad {
		InitCommand=cmd(horizalign,right;vertalign,top;x,SCREEN_RIGHT;y,SCREEN_TOP+28);
		OnCommand=cmd(diffuse,Color.Black;diffusealpha,0.75;zoomto,256,40;fadeleft,1);
};

t[#t+1] = Def.Quad {
		InitCommand=cmd(horizalign,right;vertalign,top;x,SCREEN_RIGHT;y,SCREEN_BOTTOM-70);
		OnCommand=cmd(diffuse,Color.Black;diffusealpha,0.75;zoomto,256,40;fadeleft,1);
};

t[#t+1] = StandardDecorationFromFileOptional("Footer","Footer");
t[#t+1] = StandardDecorationFromFileOptional("Logo","Logo");
t[#t+1] = StandardDecorationFromFileOptional("VersionInfo","VersionInfo");
t[#t+1] = StandardDecorationFromFileOptional("CurrentGametype","CurrentGametype");
t[#t+1] = StandardDecorationFromFileOptional("LifeDifficulty","LifeDifficulty");
t[#t+1] = StandardDecorationFromFileOptional("TimingDifficulty","TimingDifficulty");
t[#t+1] = StandardDecorationFromFileOptional("NetworkStatus","NetworkStatus");
t[#t+1] = StandardDecorationFromFileOptional("SystemDirection","SystemDirection");

t[#t+1] = StandardDecorationFromFileOptional("NumSongs","NumSongs") .. {
	SetCommand=function(self)
		local InstalledSongs, AdditionalSongs, InstalledCourses, AdditionalCourses, Groups, Unlocked = 0;
		if SONGMAN:GetRandomSong() then
			InstalledSongs, AdditionalSongs, InstalledCourses, AdditionalCourses, Groups, Unlocked =
				SONGMAN:GetNumSongs(),
				SONGMAN:GetNumAdditionalSongs(),
				SONGMAN:GetNumCourses(),
				SONGMAN:GetNumAdditionalCourses(),
				SONGMAN:GetNumSongGroups(),
				SONGMAN:GetNumUnlockedSongs();
		else
			return
		end

		self:settextf(THEME:GetString("ScreenTitleMenu","%i Songs (%i Groups), %i Courses"), InstalledSongs, Groups, InstalledCourses);
-- 		self:settextf("%i (+%i) Songs (%i Groups), %i (+%i) Courses", InstalledSongs, AdditionalSongs, Groups, InstalledCourses, AdditionalCourses);
	end;
};

t[#t+1] = StandardDecorationFromFileOptional("Clock","Clock");

t[#t+1] = LoadFont("Common Normal")..{
	Name="ThemeVersion";
	InitCommand=cmd(x,SCREEN_RIGHT-12;y,37;horizalign,right;diffuse,color("1,1,1,1");strokecolor,color("1,0.75,0,0.6");zoom,0.625;maxwidth,SCREEN_WIDTH;queuecommand,"Set";shadowlength,2;);
	Text=THEME:GetString("ScreenTitleMenu","SMTE");
};

t[#t+1] = LoadFont("Common Normal")..{
	Name="ThemeVersion";
	InitCommand=cmd(x,SCREEN_RIGHT-12;y,57;horizalign,right;diffuse,color("1,1,1,1");strokecolor,color("1,0.75,0,0.6");zoom,0.625;maxwidth,SCREEN_WIDTH;queuecommand,"Set";shadowlength,2;);
	Text=THEME:GetString("ScreenTitleMenu","SMTEVersion");
};

return t
