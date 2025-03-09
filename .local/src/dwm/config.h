/* See LICENSE file for copyright and license details. */


/* Constants */
#define TERMINAL "alacritty"
#define TERMCLASS "Alacritty"
#define BROWSER "librewolf"

/* appearance */
static const unsigned int borderpx  = 2;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int swallowfloating    = 0;        /* 1 means swallow floating windows by default */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "JetBrains Mono NerdFont:size=10" };
static const char dmenufont[]       = "JetBrains Mono NerdFont:size=10";
static const char col_gray1[]       = "#222222";
static const char col_gray2[]       = "#444444";
static const char col_gray3[]       = "#bbbbbb";
static const char col_gray4[]       = "#eeeeee";
static const char col_cyan[]        = "#005577";
static const char col_ice[]         = "#BAD7FF";
static const char col_black[]       = "#000000";
static const char col_sand[]        = "#FFE2BA";
static const char col_white[]       = "#FFFFFF";
static const char col_blue[]        = "#6caaff";
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_black, col_ice ,  col_blue },
};
/*
                    fg          bg          border
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_ice ,  col_ice },
};
*/

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
    /* class        instance        title       tags mask       isfloating      isterminal      noswallow       monitor */
    { "Gimp",       NULL,           NULL,       0,              1,              0,              0,              -1 },
    { "Spotify",    NULL,           NULL,       1<<1,           0,              0,              0,              -1 }, 
    { "Pavucontrol",NULL,           NULL,       1<<2,           0,              0,              0,              -1 },
    { "Firefox",    NULL,           NULL,       0,              0,              0,             -1,              -1 },
    { "Signal",     NULL,           NULL,       1<<6,           0,              0,              0, 	            -1 },
    { "steam",      NULL,           NULL,       1<<4,           0,              0,              0,              -1 },
    { "Alacritty",  NULL,           NULL,       0,              0,              1,              0,              -1 },
    { "Aseprite",   NULL,           NULL,       1<<5,           0,              1,              0,              -1 },
    { "discord",    NULL,           NULL,       1<<7,           0,              0,              0,              -1 },
    { NULL,         NULL,           "Event Tester", 0,          0,              0,              1,              -1 }, /* xev */

};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },
#define STACKKEYS(MOD,ACTION) \
	{ MOD, XK_j,     ACTION##stack, {.i = INC(+1) } }, \
	{ MOD, XK_k,     ACTION##stack, {.i = INC(-1) } }, \

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "st", NULL };
static const char scratchpadname[] = "scratchpad";
static const char *scratchpadcmd[] = { "st", "-t", scratchpadname, "-g", "70x30", NULL };

static const Key keys[] = {
	/* modifier                     key        function        argument */
 	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
    TAGKEYS(                        XK_8,                      7)
    TAGKEYS(                        XK_9,                      8)
    STACKKEYS(MODKEY,       			                   focus)
	STACKKEYS(MODKEY|ShiftMask,                		        push)

 	{ MODKEY|ShiftMask,             XK_Escape,  quit,       {0} },
	{ MODKEY,			            XK_minus,	spawn,		SHCMD("pactl set-sink-volume @DEFAULT_SINK@ -5%; pkill -RTMIN+10 dwmblocks")},
	{ MODKEY|ShiftMask,		        XK_minus,	spawn,		SHCMD("pactl set-sink-volume @DEFAULT_SINK@ -1%; pkill -RTMIN+10 dwmblocks")},
	{ MODKEY,			            XK_equal,	spawn,		SHCMD("pactl set-sink-volume @DEFAULT_SINK@ +5%; pkill -RTMIN+10 dwmblocks")},
	{ MODKEY|ShiftMask,		        XK_equal,	spawn,		SHCMD("pactl set-sink-volume @DEFAULT_SINK@ +1%; pkill -RTMIN+10 dwmblocks")},
    { MODKEY|Mod1Mask,              XK_equal,   spawn,      {.v = (const char*[]){"fix-vol", NULL} } },

	{ MODKEY|ShiftMask,		        XK_BackSpace,           spawn,      SHCMD("loginctl poweroff")}, 
    { MODKEY|ShiftMask|Mod1Mask,    XK_BackSpace,           spawn,      SHCMD("loginctl reboot")},

    { MODKEY,                       XK_q,      killclient,      {0} },
    { MODKEY|ShiftMask,             XK_q,      spawn,           {.v = (const char*[]){ TERMINAL, "-e", "nmtui", NULL} } },
    { MODKEY,                       XK_w,      spawn,           {.v = (const char*[]){ BROWSER, NULL } } },
    { MODKEY|ShiftMask,             XK_w,      spawn,           {.v = (const char*[]){ "brave", NULL} } },
	{ MODKEY,                       XK_e,      spawn,           {.v = (const char*[]){ TERMINAL, "-e", "lf", NULL } } },
 	{ MODKEY|ShiftMask,             XK_e,      spawn,           {.v = (const char*[]){ TERMINAL, "-e", "htop", NULL } } },
	{ MODKEY,                       XK_r,      spawn,           {.v = (const char*[]){ "thunar", NULL } } },
 	{ MODKEY,			            XK_t,	   setlayout,	    {.v = &layouts[0]} }, /* tile */
    { MODKEY,                       XK_y,      setlayout,       {.v = &layouts[1]} }, /* floating */
	{ MODKEY,		                XK_u,	   setlayout,	    {.v = &layouts[2]} }, /* deck */
	{ MODKEY|ShiftMask,	            XK_u,	   setlayout,	    {.v = &layouts[3]} }, /* monocle */
    { MODKEY,                       XK_i,      focusmon,        {.i = +1 } },
    { MODKEY|ShiftMask,             XK_i,      focusmon,        {.i = -1 } },
    { MODKEY,                       XK_p,      spawn,           SHCMD("firejail --net=none --noprofile lutris")},
    { MODKEY,                       XK_bracketleft,  tagmon,    {.i = -1 } }, 
    { MODKEY,                       XK_bracketright, tagmon,    {.i = +1 } }, 
    { MODKEY,                       XK_backslash,    spawn,     SHCMD("playerctl stop")},

	{ MODKEY,                       XK_a,      spawn,           {.v = (const char*[]) { "signal-desktop", NULL } }  },
    { MODKEY|ShiftMask,             XK_a,      spawn,           {.v = (const char*[]) { "steam", NULL } } },
  	{ MODKEY,                       XK_s,      spawn,           {.v = (const char*[]) { "spotify", NULL }}  },
  	{ MODKEY,                       XK_d,      spawn,           {.v = (const char*[]){ "dmenu_run", NULL } } },
    { MODKEY|ShiftMask,             XK_d,      spawn,           SHCMD("librewolf https://discord.com/channels/@me") },
    { MODKEY|Mod1Mask,              XK_d,      spawn,           {.v = (const char*[]){ "vesktop", NULL } } },
  	{ MODKEY,                       XK_f,      togglefullscr,   {0}, },
  	{ MODKEY|ShiftMask,             XK_f,      togglefloating,  {0} },
  	{ MODKEY,                       XK_h,      setmfact,        {.f = -0.05} },
  	{ MODKEY,                       XK_l,      setmfact,        {.f = +0.05} },
  	{ MODKEY,                  	    XK_apostrophe, togglescratch,   {.ui = 1 } },
  	{ MODKEY,                       XK_Return, spawn,           {.v = termcmd}},
  	{ MODKEY|Mod1Mask,              XK_Return, togglescratch,   {.v = scratchpadcmd } },

  	{ MODKEY,                       XK_z,      spawn,           SHCMD("flameshot gui --clipboard --path ~/extra/pics/flameshot/")},
  	{ MODKEY|Mod1Mask,              XK_z,      spawn,           SHCMD("flameshot gui --clipboard")},
  	{ MODKEY,		                XK_v,	   view,	        {0} },
	{ MODKEY,                       XK_b,      togglebar,       {0} },
	{ MODKEY,			            XK_m,	   spawn,	        {.v = (const char*[]){"pavucontrol", NULL } } },
	{ MODKEY, 			            XK_comma,  spawn,	        SHCMD("spot_vol.sh down")}, 
    { MODKEY|ShiftMask,		        XK_comma,  spawn,	        SHCMD("dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous")},
    { MODKEY,			            XK_period, spawn,	        SHCMD("spot_vol.sh up")}, 
    { MODKEY|ShiftMask,		        XK_period, spawn,	        SHCMD("dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next")},
	{ MODKEY,			            XK_slash,  spawn,	        SHCMD( "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause")},
	{ MODKEY,			            XK_space,  zoom,	        {0} },
	{ MODKEY|ShiftMask,		        XK_space,  togglefloating,	{0} },

    { MODKEY,                       XK_Home,   incnmaster,     {.i = +1 } },
    { MODKEY,                       XK_End,    incnmaster,     {.i = -1 } },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static const Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

