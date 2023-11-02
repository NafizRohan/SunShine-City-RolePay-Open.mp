/*==============================================================================
 
 
    Login And Register System Script:
 
        Copyright (C) 2018 Juan Ugalde
 
        This program is free software: you can redistribute it and/or modify it
        under the terms of the GNU General Public License as published by the
        Free Software Foundation, either version 3 of the License, or (at your
        option) any later version.
 
        This program is distributed in the hope that it will be useful, but
        WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
        See the GNU General Public License for more details.
 
        You should have received a copy of the GNU General Public License along
        with this program.  If not, see <http://www.gnu.org/licenses/>.
 
 
==============================================================================*/
 
 
#include <a_samp> //SA-MP Team
 
#include <a_mysql> //BlueG                                                      Version R41:    https://github.com/pBlueG/SA-MP-MySQL/releases/tag/R41
 
#include <sscanf2> //Y_Less                                                     Version 2.8.2:  https://github.com/maddinat0r/sscanf/releases/tag/v2.8.2
 
#include <PAWN.CMD> //ZeeX                                                          Version 0.3.1   https://github.com/YashasSamaga/I-ZCMD  - (Note: Rename izcmd to zcmd and done).
 
#define SSCANF_NO_NICE_FEATURES
/*==============================================================================
 
    Global Settings
 
==============================================================================*/
 
 
#if !defined MAX_LOGGIN_ATTEMPTS
    #define MAX_LOGGIN_ATTEMPTS             (5)
#endif
 
 
#if !defined MIN_PASSWORD_LENGTH
    #define MIN_PASSWORD_LENGTH             5
#endif
 
 
#if !defined MAX_PASSWORD_LENGTH
    #define MAX_PASSWORD_LENGTH             20
#endif
 
 
#if !defined MIN_DATE_YEAR
    #define MIN_DATE_YEAR                   (1850)
#endif
 
 
#if !defined MAX_DATE_YEAR
    #define MAX_DATE_YEAR                   (2018)
#endif
 
 
#if !defined MAX_REGISTER_TEXTDRAWS
    #define MAX_REGISTER_TEXTDRAWS          (22)
#endif
 
 
#if !defined MAX_LOGGIN_TEXTDRAWS
    #define MAX_LOGGIN_TEXTDRAWS            (4)
#endif
 
 
#if !defined COLOR_LOGGIN_TD_HOVERING
    #define COLOR_LOGGIN_TD_HOVERING        (0x00C100FF)
#endif
 
 
#if !defined COLOR_REGISTER_TD_HOVERING
    #define COLOR_REGISTER_TD_HOVERING      (0xFF000085)
#endif
 
 
new MySQL:handle;
 
main(){}
 
enum // PLAYER DIALOGS
{
    DIALOG_PLAYER_REGISTER = 1,
    DIALOG_PLAYER_LOGIN,
    DIALOG_SELECT_GENDER,
    DIALOG_SELECT_DATE_YEAR,
    DIALOG_SELECT_DATE_MONTH,
    DIALOG_SELECT_DATE_DAY,
    UNUSED_PLAYER_DIALOG
};
 
 
new
    PlayerText:LogginTextDraw[MAX_PLAYERS][MAX_LOGGIN_TEXTDRAWS],
    PlayerText:RegisterTextDraw[MAX_PLAYERS][MAX_REGISTER_TEXTDRAWS];
 
 
/*==============================================================================
 
    Internal functions
 
==============================================================================*/
 
 
static ReturnPlayerName(playerid)
{
    new string[MAX_PLAYER_NAME];
    GetPlayerName(playerid, string, MAX_PLAYER_NAME);
    return string;
}
 
 
/*==============================================================================
 
    Public functions
 
==============================================================================*/
 
 
public OnGameModeInit()
{
    handle = mysql_connect("127.0.0.1", "root", "", "test");
    
    if(mysql_errno(handle))
    {
        print("[mysql]: Failed to connect mysql database.");
    }
    else
    {
        mysql_query(handle, "CREATE TABLE IF NOT EXISTS `users` (`id` int(11) NOT NULL AUTO_INCREMENT, `username` text NOT NULL, `password` text NOT NULL, `gender` int(1) NOT NULL DEFAULT '1', `birthdate` text NOT NULL, `skin` int(3) NOT NULL DEFAULT '0', PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;", false);
    
        print("[mysql]: Success connect to mysql database.");
    }
    return 1;
}
 
public OnGameModeExit()
{
    if (mysql_errno(handle) == 0) mysql_close(handle);
 
    for (new i, len = GetPlayerPoolSize(); i <= len; i++)
    {
        if (!IsPlayerConnected(i)) continue;
    }
    return 1;
}
 
public OnPlayerConnect(playerid)
{
    new
        Cache:cache, rows, query[81 +MAX_PLAYER_NAME];
 
    format(query, sizeof(query), "SELECT * FROM `users` WHERE `username` COLLATE latin1_general_cs = '%q' LIMIT 1", ReturnPlayerName(playerid));
    cache = mysql_query(handle, query, true);
    
    cache_get_row_count(rows);
    
    if (! rows)
    {
        if (SetPVarInt(playerid, "RegisterTextDraws", 1))
        {
            RegisterTextDraw[playerid][0] = CreatePlayerTextDraw(playerid, 277.400085, 101.399917, "box");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][0], 0.000000, 25.012474);
            PlayerTextDrawTextSize(playerid, RegisterTextDraw[playerid][0], 512.106445, 0.000000);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][0], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][0], -1);
            PlayerTextDrawUseBox(playerid, RegisterTextDraw[playerid][0], 1);
            PlayerTextDrawBoxColor(playerid, RegisterTextDraw[playerid][0], 133);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][0], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][0], 0);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][0], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][0], 1);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][0], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][0], 0);
 
            RegisterTextDraw[playerid][1] = CreatePlayerTextDraw(playerid, 144.900054, 98.800018, "");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][1], 0.000000, 0.000000);
            PlayerTextDrawTextSize(playerid, RegisterTextDraw[playerid][1], 124.000000, 207.772872);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][1], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][1], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][1], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][1], 0);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][1], 153);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][1], 5);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][1], 0);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][1], 0);
            PlayerTextDrawSetPreviewModel(playerid, RegisterTextDraw[playerid][1], 0);
            PlayerTextDrawSetPreviewRot(playerid, RegisterTextDraw[playerid][1], 0.000000, 0.000000, 0.000000, 1.000000);
 
            RegisterTextDraw[playerid][2] = CreatePlayerTextDraw(playerid, 207.199340, 313.302551, "PlayerName");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][2], 0.298000, 1.483332);
            PlayerTextDrawTextSize(playerid, RegisterTextDraw[playerid][2], -0.649999, 120.680145);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][2], 2);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][2], -1);
            PlayerTextDrawUseBox(playerid, RegisterTextDraw[playerid][2], 1);
            PlayerTextDrawBoxColor(playerid, RegisterTextDraw[playerid][2], 133);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][2], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][2], 1);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][2], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][2], 2);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][2], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][2], 0);
 
            RegisterTextDraw[playerid][3] = CreatePlayerTextDraw(playerid, 366.000000, 116.000000, "box");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][3], 0.000000, 2.149996);
            PlayerTextDrawTextSize(playerid, RegisterTextDraw[playerid][3], 504.000000, 20.000000);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][3], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][3], -1);
            PlayerTextDrawUseBox(playerid, RegisterTextDraw[playerid][3], 1);
            PlayerTextDrawBoxColor(playerid, RegisterTextDraw[playerid][3], 252645375);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][3], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][3], 0);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][3], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][3], 1);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][3], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][3], 0);
            PlayerTextDrawSetSelectable(playerid, RegisterTextDraw[playerid][3], true);
 
            RegisterTextDraw[playerid][4] = CreatePlayerTextDraw(playerid, 320.000000, 118.000000, "Password:");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][4], 0.279000, 1.401664);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][4], 2);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][4], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][4], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][4], 1);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][4], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][4], 2);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][4], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][4], 0);
 
            RegisterTextDraw[playerid][5] = CreatePlayerTextDraw(playerid, 320.500000, 157.301635, "Gender:");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][5], 0.279000, 1.401664);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][5], 2);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][5], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][5], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][5], 1);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][5], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][5], 2);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][5], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][5], 0);
 
            RegisterTextDraw[playerid][6] = CreatePlayerTextDraw(playerid, 366.000000, 154.000305, "box");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][6], 0.000000, 2.149996);
            PlayerTextDrawTextSize(playerid, RegisterTextDraw[playerid][6], 504.000000, 20.000000);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][6], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][6], -1);
            PlayerTextDrawUseBox(playerid, RegisterTextDraw[playerid][6], 1);
            PlayerTextDrawBoxColor(playerid, RegisterTextDraw[playerid][6], 252645375);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][6], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][6], 0);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][6], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][6], 1);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][6], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][6], 0);
            PlayerTextDrawSetSelectable(playerid, RegisterTextDraw[playerid][6], true);
            
            RegisterTextDraw[playerid][7] = CreatePlayerTextDraw(playerid, 320.000000, 194.503906, "Birth Date:");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][7], 0.279000, 1.401664);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][7], 2);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][7], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][7], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][7], 1);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][7], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][7], 2);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][7], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][7], 0);
 
            RegisterTextDraw[playerid][8] = CreatePlayerTextDraw(playerid, 366.000000, 192.902679, "box");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][8], 0.000000, 2.149996);
            PlayerTextDrawTextSize(playerid, RegisterTextDraw[playerid][8], 504.000000, 20.000000);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][8], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][8], -1);
            PlayerTextDrawUseBox(playerid, RegisterTextDraw[playerid][8], 1);
            PlayerTextDrawBoxColor(playerid, RegisterTextDraw[playerid][8], 252645375);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][8], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][8], 0);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][8], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][8], 1);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][8], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][8], 0);
            PlayerTextDrawSetSelectable(playerid, RegisterTextDraw[playerid][8], true);
 
            RegisterTextDraw[playerid][9] = CreatePlayerTextDraw(playerid, 374.499420, 156.800048, "N/A");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][9], 0.279000, 1.401664);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][9], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][9], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][9], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][9], 1);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][9], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][9], 2);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][9], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][9], 0);
 
            RegisterTextDraw[playerid][10] = CreatePlayerTextDraw(playerid, 374.000000, 196.283126, "Year");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][10], 0.279000, 1.401664);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][10], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][10], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][10], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][10], 1);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][10], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][10], 2);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][10], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][10], 0);
 
            RegisterTextDraw[playerid][11] = CreatePlayerTextDraw(playerid, 366.000000, 224.004577, "box");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][11], 0.000000, 2.149996);
            PlayerTextDrawTextSize(playerid, RegisterTextDraw[playerid][11], 504.000000, 20.000000);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][11], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][11], -1);
            PlayerTextDrawUseBox(playerid, RegisterTextDraw[playerid][11], 1);
            PlayerTextDrawBoxColor(playerid, RegisterTextDraw[playerid][11], 252645375);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][11], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][11], 0);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][11], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][11], 1);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][11], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][11], 0);
            PlayerTextDrawSetSelectable(playerid, RegisterTextDraw[playerid][11], true);
            
            RegisterTextDraw[playerid][12] = CreatePlayerTextDraw(playerid, 373.799957, 226.783096, "Month");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][12], 0.279000, 1.401664);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][12], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][12], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][12], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][12], 1);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][12], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][12], 2);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][12], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][12], 0);
 
            RegisterTextDraw[playerid][13] = CreatePlayerTextDraw(playerid, 366.000000, 254.506439, "box");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][13], 0.000000, 2.149996);
            PlayerTextDrawTextSize(playerid, RegisterTextDraw[playerid][13], 504.000000, 20.000000);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][13], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][13], -1);
            PlayerTextDrawUseBox(playerid, RegisterTextDraw[playerid][13], 1);
            PlayerTextDrawBoxColor(playerid, RegisterTextDraw[playerid][13], 252645375);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][13], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][13], 0);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][13], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][13], 1);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][13], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][13], 0);
            PlayerTextDrawSetSelectable(playerid, RegisterTextDraw[playerid][13], true);
            
            RegisterTextDraw[playerid][14] = CreatePlayerTextDraw(playerid, 374.200012, 257.683105, "Day");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][14], 0.279000, 1.401664);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][14], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][14], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][14], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][14], 1);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][14], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][14], 2);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][14], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][14], 0);
 
            RegisterTextDraw[playerid][15] = CreatePlayerTextDraw(playerid, 481.000000, 311.743896, "Sign Up");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][15], 0.229497, 1.214998);
            PlayerTextDrawTextSize(playerid, RegisterTextDraw[playerid][15], 12.000000, 46.000000);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][15], 2);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][15], -1);
            PlayerTextDrawUseBox(playerid, RegisterTextDraw[playerid][15], 1);
            PlayerTextDrawBoxColor(playerid, RegisterTextDraw[playerid][15], 6815816);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][15], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][15], 1);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][15], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][15], 2);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][15], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][15], 0);
            PlayerTextDrawSetSelectable(playerid, RegisterTextDraw[playerid][15], true);
 
            RegisterTextDraw[playerid][16] = CreatePlayerTextDraw(playerid, 336.797363, 286.388488, "SKIN:");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][16], 0.279000, 1.401664);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][16], 2);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][16], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][16], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][16], 1);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][16], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][16], 2);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][16], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][16], 0);
            
            RegisterTextDraw[playerid][17] = CreatePlayerTextDraw(playerid, 378.400756, 286.685028, "ld_beat:left");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][17], 0.000000, 0.000000);
            PlayerTextDrawTextSize(playerid, RegisterTextDraw[playerid][17], 12.000000, 16.000000);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][17], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][17], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][17], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][17], 0);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][17], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][17], 4);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][17], 0);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][17], 0);
            PlayerTextDrawSetSelectable(playerid, RegisterTextDraw[playerid][17], true);
 
            RegisterTextDraw[playerid][18] = CreatePlayerTextDraw(playerid, 473.406555, 286.685028, "ld_beat:right");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][18], 0.000000, 0.000000);
            PlayerTextDrawTextSize(playerid, RegisterTextDraw[playerid][18], 12.000000, 16.000000);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][18], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][18], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][18], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][18], 0);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][18], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][18], 4);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][18], 0);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][18], 0);
            PlayerTextDrawSetSelectable(playerid, RegisterTextDraw[playerid][18], true);
            
            RegisterTextDraw[playerid][19] = CreatePlayerTextDraw(playerid, 431.900238, 287.416778, "0");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][19], 0.400000, 1.600000);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][19], 2);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][19], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][19], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][19], 1);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][19], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][19], 2);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][19], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][19], 0);
            
            RegisterTextDraw[playerid][20] = CreatePlayerTextDraw(playerid, 368.800292, 122.633346, "[]");
            PlayerTextDrawLetterSize(playerid, RegisterTextDraw[playerid][20], 0.191495, 1.057499);
            PlayerTextDrawAlignment(playerid, RegisterTextDraw[playerid][20], 1);
            PlayerTextDrawColor(playerid, RegisterTextDraw[playerid][20], -1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][20], 0);
            PlayerTextDrawSetOutline(playerid, RegisterTextDraw[playerid][20], 1);
            PlayerTextDrawBackgroundColor(playerid, RegisterTextDraw[playerid][20], 255);
            PlayerTextDrawFont(playerid, RegisterTextDraw[playerid][20], 2);
            PlayerTextDrawSetProportional(playerid, RegisterTextDraw[playerid][20], 1);
            PlayerTextDrawSetShadow(playerid, RegisterTextDraw[playerid][20], 0);
        }
        if (SetPVarInt(playerid, "CurrentPreviewModel", 0))
        {
            SetPVarInt(playerid, "Gender", -1);
            
            SetPVarInt(playerid, "BirthDateDay", -1);
            SetPVarInt(playerid, "BirthDateYear", -1);
            SetPVarInt(playerid, "BirthDateMonth", -1);
        }
        
        if (GetPVarInt(playerid, "RegisterTextDraws"))
        {
            PlayerTextDrawSetString(playerid, RegisterTextDraw[playerid][2], ReturnPlayerName(playerid));
            
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][0]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][1]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][2]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][3]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][4]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][5]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][6]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][7]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][8]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][9]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][10]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][11]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][12]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][13]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][14]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][15]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][16]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][17]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][18]);
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][19]);
            
            SelectTextDraw(playerid, COLOR_REGISTER_TD_HOVERING);
        }
    }
    else
    {
        if (SetPVarInt(playerid, "LogginTextDraws", 1))
        {
            LogginTextDraw[playerid][0] = CreatePlayerTextDraw(playerid, 254.499908, 103.666770, "");
            PlayerTextDrawLetterSize(playerid, LogginTextDraw[playerid][0], 0.000000, 0.000000);
            PlayerTextDrawTextSize(playerid, LogginTextDraw[playerid][0], 131.000000, 190.000000);
            PlayerTextDrawAlignment(playerid, LogginTextDraw[playerid][0], 1);
            PlayerTextDrawColor(playerid, LogginTextDraw[playerid][0], -1);
            PlayerTextDrawSetShadow(playerid, LogginTextDraw[playerid][0], 0);
            PlayerTextDrawSetOutline(playerid, LogginTextDraw[playerid][0], 0);
            PlayerTextDrawBackgroundColor(playerid, LogginTextDraw[playerid][0], 153);
            PlayerTextDrawFont(playerid, LogginTextDraw[playerid][0], 5);
            PlayerTextDrawSetProportional(playerid, LogginTextDraw[playerid][0], 0);
            PlayerTextDrawSetShadow(playerid, LogginTextDraw[playerid][0], 0);
            PlayerTextDrawSetPreviewModel(playerid, LogginTextDraw[playerid][0], 1);
            PlayerTextDrawSetPreviewRot(playerid, LogginTextDraw[playerid][0], 0.000000, 0.000000, 0.000000, 1.000000);
 
            LogginTextDraw[playerid][1] = CreatePlayerTextDraw(playerid, 320.300109, 303.167022, "PlayerName");
            PlayerTextDrawLetterSize(playerid, LogginTextDraw[playerid][1], 0.400000, 1.600000);
            PlayerTextDrawTextSize(playerid, LogginTextDraw[playerid][1], 0.000000, 127.419876);
            PlayerTextDrawAlignment(playerid, LogginTextDraw[playerid][1], 2);
            PlayerTextDrawColor(playerid, LogginTextDraw[playerid][1], -1);
            PlayerTextDrawUseBox(playerid, LogginTextDraw[playerid][1], 1);
            PlayerTextDrawBoxColor(playerid, LogginTextDraw[playerid][1], 153);
            PlayerTextDrawSetShadow(playerid, LogginTextDraw[playerid][1], 0);
            PlayerTextDrawSetOutline(playerid, LogginTextDraw[playerid][1], 1);
            PlayerTextDrawBackgroundColor(playerid, LogginTextDraw[playerid][1], 255);
            PlayerTextDrawFont(playerid, LogginTextDraw[playerid][1], 2);
            PlayerTextDrawSetProportional(playerid, LogginTextDraw[playerid][1], 1);
            PlayerTextDrawSetShadow(playerid, LogginTextDraw[playerid][1], 0);
 
            LogginTextDraw[playerid][2] = CreatePlayerTextDraw(playerid, 256.899993, 322.599914, "box");
            PlayerTextDrawLetterSize(playerid, LogginTextDraw[playerid][2], 0.000000, 2.222089);
            PlayerTextDrawTextSize(playerid, LogginTextDraw[playerid][2], 383.920013, 0.000000);
            PlayerTextDrawAlignment(playerid, LogginTextDraw[playerid][2], 1);
            PlayerTextDrawColor(playerid, LogginTextDraw[playerid][2], -1);
            PlayerTextDrawUseBox(playerid, LogginTextDraw[playerid][2], 1);
            PlayerTextDrawBoxColor(playerid, LogginTextDraw[playerid][2], 133);
            PlayerTextDrawSetShadow(playerid, LogginTextDraw[playerid][2], 0);
            PlayerTextDrawSetOutline(playerid, LogginTextDraw[playerid][2], 0);
            PlayerTextDrawBackgroundColor(playerid, LogginTextDraw[playerid][2], 255);
            PlayerTextDrawFont(playerid, LogginTextDraw[playerid][2], 1);
            PlayerTextDrawSetProportional(playerid, LogginTextDraw[playerid][2], 1);
            PlayerTextDrawSetShadow(playerid, LogginTextDraw[playerid][2], 0);
 
            LogginTextDraw[playerid][3] = CreatePlayerTextDraw(playerid, 320.799957, 324.949707, "SIGN IN");
            PlayerTextDrawLetterSize(playerid, LogginTextDraw[playerid][3], 0.305999, 1.290832);
            PlayerTextDrawTextSize(playerid, LogginTextDraw[playerid][3], 10.000000, 113.000000);
            PlayerTextDrawAlignment(playerid, LogginTextDraw[playerid][3], 2);
            PlayerTextDrawColor(playerid, LogginTextDraw[playerid][3], -1);
            PlayerTextDrawUseBox(playerid, LogginTextDraw[playerid][3], 1);
            PlayerTextDrawBoxColor(playerid, LogginTextDraw[playerid][3], -2139062017);
            PlayerTextDrawSetShadow(playerid, LogginTextDraw[playerid][3], 0);
            PlayerTextDrawSetOutline(playerid, LogginTextDraw[playerid][3], 1);
            PlayerTextDrawBackgroundColor(playerid, LogginTextDraw[playerid][3], 255);
            PlayerTextDrawFont(playerid, LogginTextDraw[playerid][3], 2);
            PlayerTextDrawSetProportional(playerid, LogginTextDraw[playerid][3], 1);
            PlayerTextDrawSetShadow(playerid, LogginTextDraw[playerid][3], 0);
            PlayerTextDrawSetSelectable(playerid, LogginTextDraw[playerid][3], true);
        }
        
        new password[MAX_PASSWORD_LENGTH +1], birthdate[11 +1], gender, previewmodel;
        
        cache_get_value_name(0, "password", password);
        cache_get_value_name(0, "birthdate", birthdate);
 
        cache_get_value_name_int(0, "gender", gender);
        cache_get_value_name_int(0, "skin", previewmodel);
        
        new day, month, year;
        sscanf(birthdate, "p</>iii", day, month, year);
        
        SetPVarInt(playerid, "Gender", gender);
        
        SetPVarInt(playerid, "BirthDateDay", day);
        SetPVarInt(playerid, "BirthDateMonth", month);
        SetPVarInt(playerid, "BirthDateYear", year);
 
        SetPVarString(playerid, "Password", password);
        
        SetPVarInt(playerid, "LoggedInPlayer", -1);
        SetPVarInt(playerid, "LogginAttempts", 0);
 
        PlayerTextDrawSetPreviewModel(playerid, LogginTextDraw[playerid][0], previewmodel);
        PlayerTextDrawSetString(playerid, LogginTextDraw[playerid][1], ReturnPlayerName(playerid));
        
        for (new i; i < MAX_LOGGIN_TEXTDRAWS; i++)
        {
            PlayerTextDrawShow(playerid, LogginTextDraw[playerid][i]);
        }
        
        SelectTextDraw(playerid, COLOR_LOGGIN_TD_HOVERING);
    }
 
    cache_delete(cache);
    
    return 1;
}
 
public OnPlayerDisconnect(playerid, reason)
{
    if (GetPVarInt(playerid, "RegisterTextDraws"))
    {
        for(new i; i < MAX_REGISTER_TEXTDRAWS; i++)
        {
            PlayerTextDrawHide(playerid, RegisterTextDraw[playerid][i]);
            PlayerTextDrawDestroy(playerid, RegisterTextDraw[playerid][i]);
        }
    }
    if (GetPVarInt(playerid, "LogginTextDraws"))
    {
        for(new i; i < MAX_LOGGIN_TEXTDRAWS; i++)
        {
            PlayerTextDrawHide(playerid, LogginTextDraw[playerid][i]);
            PlayerTextDrawDestroy(playerid, LogginTextDraw[playerid][i]);
        }
    }
    SetPVarString(playerid, "Password", "okay");
    
    SetPVarInt(playerid, "Gender", -1);
    
    SetPVarInt(playerid, "BirthDateDay", -1);
    SetPVarInt(playerid, "BirthDateMonth", -1);
    SetPVarInt(playerid, "BirthDateYear", -1);
 
    SetPVarInt(playerid, "LogginAttempts", -1);
    SetPVarInt(playerid, "CurrentPreviewModel", -1);
    
    SetPVarInt(playerid, "RegisterTextDraws", -1);
    SetPVarInt(playerid, "LogginTextDraws", -1);
    
    SetPVarInt(playerid, "LoggedInPlayer", -1);
    SetPVarInt(playerid, "LogginAttempts", 0);
 
    return 1;
}
 
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_PLAYER_REGISTER:
        {
            if (response == 1)
            {
                if (!(MIN_PASSWORD_LENGTH <= strlen(inputtext) <= MAX_PASSWORD_LENGTH))
                {
                    new string[118];
 
                    format(string, sizeof(string), "{FFFFFF}Enter your password then hit \"Submit\".\n\n \
                                                    {DC143C}ERROR: Invalid password length, must be (b/w: %d/%d)", MIN_PASSWORD_LENGTH, MAX_PASSWORD_LENGTH);
 
                    ShowPlayerDialog(playerid, DIALOG_PLAYER_REGISTER, DIALOG_STYLE_INPUT, "{FFFF66}Register: {FFFFFF}Password", string, "Submit", "Close");
                }
                else
                {
                    new string[20 +1];
                    for (new i, len = strlen(inputtext); i < len; i++)
                    {
                        if (i < 10) strcat(string, "[]");
                    }
 
                    if (SetPVarString(playerid, "Password", inputtext))
                    {
                        PlayerTextDrawSetString(playerid, RegisterTextDraw[playerid][20], string);
                        PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][20]);
                    }
                }
            }
        }
        case DIALOG_PLAYER_LOGIN:
        {
            if (response == 1)
            {
                SetPVarInt(playerid, "LogginAttempts", (GetPVarInt(playerid, "LogginAttempts") +1));
                
                if (!(MIN_PASSWORD_LENGTH <= strlen(inputtext) <= MAX_PASSWORD_LENGTH))
                {
                    if (GetPVarInt(playerid, "LogginAttempts") == MAX_LOGGIN_ATTEMPTS) return Kick(playerid);
                    
                    new string[144];
 
                    format(string, sizeof(string), "ERROR: Invalid password length, must be (correct length: %d/%d)", MIN_PASSWORD_LENGTH, MAX_PASSWORD_LENGTH);
                    SendClientMessage(playerid, 0xDC143CFF, string);
                    
                    format(string, sizeof(string), "{FFFFFF}Enter your password then hit \"Submit\"\n\n \
                                                    Error: Insert your correct password{DC143C}(attempts: %d/%d)", GetPVarInt(playerid, "LogginAttempts"), MAX_LOGGIN_ATTEMPTS);
 
                    ShowPlayerDialog(playerid, DIALOG_PLAYER_LOGIN, DIALOG_STYLE_INPUT, "{FFFF66}Login In: {FFFFFF}Insert your password", string, "Submit", "Close");
                    
                    PlayerPlaySound(playerid, 1085, 0.00, 0.00, 0.00);
                }
                else
                {
                    new password[MAX_PASSWORD_LENGTH +1];
                    GetPVarString(playerid, "Password", password, MAX_PASSWORD_LENGTH);
 
                    if (!strcmp(inputtext, password, false))
                    {
                        if (GetPVarInt(playerid, "LogginTextDraws"))
                        {
                            CancelSelectTextDraw(playerid);
                        
                            for (new i; i < MAX_LOGGIN_TEXTDRAWS; i++)
                            {
                                PlayerTextDrawHide(playerid, LogginTextDraw[playerid][i]);
                                PlayerTextDrawDestroy(playerid, LogginTextDraw[playerid][i]);
                            }
                            SetPVarInt(playerid, "LogginTextDraws", -1);
                            
                            if (SetPVarInt(playerid, "LoggedInPlayer", 1))
                            {
                                SendClientMessage(playerid, 0x00FF00FF, "Welcome Back!");
                            }
                        }
                    }
                    else
                    {
                        if (GetPVarInt(playerid, "LogginAttempts") == MAX_LOGGIN_ATTEMPTS) return Kick(playerid);
                        
                        new string[133];
 
                        format(string, sizeof(string), "{FFFFFF}Enter your password then hit \"Submit\"\n\n \
                                                        Error: Insert your correct password{DC143C}(attempts: %d/%d)", GetPVarInt(playerid, "LogginAttempts"), MAX_LOGGIN_ATTEMPTS);
                                                        
                        ShowPlayerDialog(playerid, DIALOG_PLAYER_LOGIN, DIALOG_STYLE_INPUT, "{FFFF66}Login In: {FFFFFF}Insert your password", string, "Submit", "Close");
                        
                        PlayerPlaySound(playerid, 1085, 0.00, 0.00, 0.00);
                    }
                }
            }
        }
        case DIALOG_SELECT_GENDER:
        {
            if (response == 1)
            {
                if (SetPVarInt(playerid, "Gender", (listitem +1)))
                {
                    PlayerTextDrawSetString(playerid, RegisterTextDraw[playerid][9], (listitem > 0) ? ("Female"):("Male"));
                }
            }
        }
        case DIALOG_SELECT_DATE_DAY:
        {
            if (response == 1)
            {
                if (GetPVarInt(playerid, "BirthDateMonth") == -1)
                {
                    ShowPlayerDialog(playerid, UNUSED_PLAYER_DIALOG, DIALOG_STYLE_MSGBOX, "{FFFF66}Register: {DC143C}Error:", "{FFFFFF}- Please; first select a month for your birth date", "Close", "");
                    
                    PlayerPlaySound(playerid, 1085, 0.00, 0.00, 0.00);
                }
                else
                {
                    if (SetPVarInt(playerid, "BirthDateDay", (listitem +1)))
                    {
                        new string[2 +1];
 
                        format(string, sizeof(string), "%i", (listitem +1));
                        PlayerTextDrawSetString(playerid, RegisterTextDraw[playerid][14], string);
                    }
                }
            }
        }
        case DIALOG_SELECT_DATE_MONTH:
        {
            if (response == 1)
            {
                new month[15];
            
                switch (listitem)
                {
                    case 0: month = "January";
                    case 1: month = "February";
                    case 2: month = "March";
                    case 3: month = "April";
                    case 4: month = "May";
                    case 5: month = "June";
                    case 6: month = "July";
                    case 7: month = "August";
                    case 8: month = "September";
                    case 9: month = "October";
                    case 10: month = "November";
                    case 11: month = "December";
                    
                    default: month = "Unknown: ERROR";
                }
                
                PlayerTextDrawSetString(playerid, RegisterTextDraw[playerid][12], month);
                
                SetPVarInt(playerid, "BirthDateMonth", (listitem +1));
            }
        }
        case DIALOG_SELECT_DATE_YEAR:
        {
            if (response == 1)
            {
                PlayerTextDrawSetString(playerid, RegisterTextDraw[playerid][14], "Day");
                PlayerTextDrawSetString(playerid, RegisterTextDraw[playerid][12], "Month");
                
                SetPVarInt(playerid, "BirthDateDay", -1);
                SetPVarInt(playerid, "BirthDateMonth", -1);
                
                new string[5];
 
                format(string, sizeof(string), "%i", (MAX_DATE_YEAR -listitem));
                PlayerTextDrawSetString(playerid, RegisterTextDraw[playerid][10], string);
                
                SetPVarInt(playerid, "BirthDateYear", (MAX_DATE_YEAR -listitem));
            }
        }
    }
    return 1;
}
 
public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
    if (playertextid == RegisterTextDraw[playerid][3])
    {
        ShowPlayerDialog(playerid, DIALOG_PLAYER_REGISTER, DIALOG_STYLE_PASSWORD, "{FFFF66}Register: {FFFFFF}Password", "{FFFFFF}Enter your password then hit \"Submit\"", "Submit", "Close");
    }
    
    else if (playertextid == RegisterTextDraw[playerid][6])
    {
        ShowPlayerDialog(playerid, DIALOG_SELECT_GENDER, DIALOG_STYLE_LIST, "{FFFF66}Register: {FFFFFF}Gender", "{FFFFFF}Male\nFemale\n", "Select", "Close");
    }
 
    else if (playertextid == RegisterTextDraw[playerid][8])
    {
        new string[7 *(MAX_DATE_YEAR -MIN_DATE_YEAR)], year[7];
 
        for (new i = MAX_DATE_YEAR; i >= MIN_DATE_YEAR; i--)
        {
            format(year, sizeof(year), "%i\n", i);
            strcat(string, year, sizeof(string));
        }
        ShowPlayerDialog(playerid, DIALOG_SELECT_DATE_YEAR, DIALOG_STYLE_LIST, "{FFFF66}Register: {FFFFFF}Birth Date: Year", string, "Select", "Close");
    }
    
    else if (playertextid == RegisterTextDraw[playerid][11])
    {
        ShowPlayerDialog(playerid, DIALOG_SELECT_DATE_MONTH, DIALOG_STYLE_LIST, "{FFFF66}Register: {FFFFFF}Birth Date: Month", "{FFFFFF}January\nFebruary\nMarch\nApril\nMay\nJune\nJuly\nAugust\nSeptember\nOctober\nNovember\nDecember", "Select", "Close");
    }
    
    else if (playertextid == RegisterTextDraw[playerid][13])
    {
        new max_days_for_month;
        
        switch (GetPVarInt(playerid, "BirthDateMonth"))
        {
            case 1: max_days_for_month = 31;
            case 3: max_days_for_month = 31;
            case 4: max_days_for_month = 30;
            case 5: max_days_for_month = 31;
            case 6: max_days_for_month = 30;
            case 7: max_days_for_month = 31;
            case 8: max_days_for_month = 31;
            case 9: max_days_for_month = 30;
            case 10: max_days_for_month = 31;
            case 11: max_days_for_month = 31;
            case 12: max_days_for_month = 31;
            
            case 2: //February
            {
                if ((GetPVarInt(playerid, "BirthDateYear") %4) == 0) max_days_for_month = 29;
                else                                                 max_days_for_month = 28;
            }
            
            default: max_days_for_month = 30;
        }
 
        new string[5 *31], days[5];
 
        for (new i = 1; i <= max_days_for_month; i++)
        {
            format(days, sizeof(days), "%i\n", i);
            strcat(string, days, sizeof(string));
        }
        ShowPlayerDialog(playerid, DIALOG_SELECT_DATE_DAY, DIALOG_STYLE_LIST, "{FFFF66}Register: {FFFFFF}Birth Date: Day", string, "Select", "Close");
    }
 
    else if (playertextid == RegisterTextDraw[playerid][15])
    {
        new Gender          =       GetPVarInt(playerid, "Gender");
        new BirthDay        =       GetPVarInt(playerid, "BirthDateDay");
        new BirthMonth      =       GetPVarInt(playerid, "BirthDateMonth");
        new BirthYear       =       GetPVarInt(playerid, "BirthDateYear");
        
        new password[MAX_PASSWORD_LENGTH +1];
        GetPVarString(playerid, "Password", password, MAX_PASSWORD_LENGTH);
 
        if (!(MIN_PASSWORD_LENGTH <= strlen(password) <= MAX_PASSWORD_LENGTH) || Gender < 0 || BirthDay < 0 || BirthMonth < 0 || BirthYear < 0)
        {
            new string[234 +1];
 
            if (!(MIN_PASSWORD_LENGTH <= strlen(password) <= MAX_PASSWORD_LENGTH))
            {
                strcat(string, "{FFFFFF}- Please enter a password\n");
            }
            if (Gender          < 0)    strcat(string, "{FFFFFF}- Please select a gender\n");
            if (BirthYear       < 0)    strcat(string, "{FFFFFF}- Please select a year four your birth date\n");
            if (BirthMonth      < 0)    strcat(string, "{FFFFFF}- Please select a month four your birth date\n");
            if (BirthDay        < 0)    strcat(string, "{FFFFFF}- Please select a day four your birth date\n");
            
            ShowPlayerDialog(playerid, UNUSED_PLAYER_DIALOG, DIALOG_STYLE_MSGBOX, "{FFFF66}Register: {DC143C}Error:", string, "Close", "");
            
            PlayerPlaySound(playerid, 1085, 0.00, 0.00, 0.00);
            
        }
        else
        {
            if (SetPVarInt(playerid, "RegisterTextDraws", -1))
            {
                CancelSelectTextDraw(playerid);
            
                for (new i; i < MAX_REGISTER_TEXTDRAWS; i++)
                {
                    PlayerTextDrawHide(playerid, RegisterTextDraw[playerid][i]);
                    PlayerTextDrawDestroy(playerid, RegisterTextDraw[playerid][i]);
                }
                
                new query[256 +1];
                format(query, sizeof(query), "INSERT INTO `users`(`username`, `password`, `gender`, `birthdate`, `skin`) VALUES ('%q', '%q', %i, '%i/%i/%i', %i)", ReturnPlayerName(playerid), password, Gender, BirthDay, BirthMonth, BirthYear, GetPVarInt(playerid, "CurrentPreviewModel"));
                mysql_query(handle, query, false);
                TogglePlayerSpectating(playerid, false);
                SetSpawnInfo(playerid, 0, 119, 0, 0, 13, 90, 0, 0, 0, 0, 0, 0);
                SpawnPlayer(playerid);
            }
        }
    }
 
    else if (playertextid == RegisterTextDraw[playerid][17])
    {
        new
            current = GetPVarInt(playerid, "CurrentPreviewModel");
 
        if (current <= 0)
        {
            PlayerPlaySound(playerid, 1085, 0.00, 0.00, 0.00);
        }
        else
        {
            SetPVarInt(playerid, "CurrentPreviewModel", (current -1));
            
            PlayerTextDrawHide(playerid, RegisterTextDraw[playerid][1]);
            PlayerTextDrawSetPreviewModel(playerid, RegisterTextDraw[playerid][1], (current -1));
            
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][1]);
            
            new string[3 +1];
            format(string, sizeof(string), "%i", (current -1));
            PlayerTextDrawSetString(playerid, RegisterTextDraw[playerid][19], string);
        }
    }
    
    else if (playertextid == RegisterTextDraw[playerid][18])
    {
        new
            current = GetPVarInt(playerid, "CurrentPreviewModel");
            
        if (current > 310)
        {
            PlayerPlaySound(playerid, 1085, 0.00, 0.00, 0.00);
        }
        else
        {
            SetPVarInt(playerid, "CurrentPreviewModel", (current +1));
            
            PlayerTextDrawHide(playerid, RegisterTextDraw[playerid][1]);
            PlayerTextDrawSetPreviewModel(playerid, RegisterTextDraw[playerid][1], (current +1));
            
            PlayerTextDrawShow(playerid, RegisterTextDraw[playerid][1]);
            
            new string[3 +1];
            format(string, sizeof(string), "%i", (current +1));
            PlayerTextDrawSetString(playerid, RegisterTextDraw[playerid][19], string);
        }
    }
    else if (playertextid == LogginTextDraw[playerid][3])
    {
        ShowPlayerDialog(playerid, DIALOG_PLAYER_LOGIN, DIALOG_STYLE_PASSWORD, "{FFFF66}Login In: {FFFFFF}Insert your password", "{FFFFFF}Enter your password then hit \"Submit\"", "Submit", "Close");
    }
    return 1;
}
 
/*==============================================================================
 
    Util Commands:
 
==============================================================================*/
 
 
CMD:changepassword(playerid, params[])
{
    if (GetPVarInt(playerid, "LoggedInPlayer") < 0) return SendClientMessage(playerid, 0xDC143CFF, "ERROR: You are not registered or logged in.");
 
    new password[MAX_PASSWORD_LENGTH +1];
 
    if (sscanf(params, "s["#MAX_PASSWORD_LENGTH"]", password)) return SendClientMessage(playerid, -1, "* USAGE: /changepassword <new password>");
    
    if (!(MIN_PASSWORD_LENGTH <= strlen(password) <= MAX_PASSWORD_LENGTH)) return SendClientMessage(playerid, 0xDC143CFF, "ERROR: Invalid password length, must be (correct length: "#MIN_PASSWORD_LENGTH"/"#MAX_PASSWORD_LENGTH")");
    
    new current_password[MAX_PASSWORD_LENGTH +1];
    GetPVarString(playerid, "Password", current_password, MAX_PASSWORD_LENGTH);
    
    if (!strcmp(current_password, password)) return SendClientMessage(playerid, 0xDC143CFF, "ERROR: Your current password and the new password are the same.");
    
    new query[109 +MAX_PASSWORD_LENGTH];
    
    format(query, sizeof(query), "UPDATE `users` SET `password` = '%q' WHERE `username` COLLATE latin1_general_cs = '%q'", password, ReturnPlayerName(playerid));
    mysql_query(handle, query, false);
    
    new message[58 +MAX_PASSWORD_LENGTH];
 
    format(message, sizeof(message), "ACCOUNT: You have changed your password to {FFFFFF}\"%s\"", password);
    SendClientMessage(playerid, 0x00FF00FF, message);
    
    SetPVarString(playerid, "Password", password);
    
    return 1;
}
 
CMD:changegender(playerid, params[])
{
    if (GetPVarInt(playerid, "LoggedInPlayer") < 0) return SendClientMessage(playerid, 0xDC143CFF, "ERROR: You are not registered or logged in.");
    
    new gender[6 +1];
    if (sscanf(params, "s[7]", gender)) return SendClientMessage(playerid, -1, "USAGE: /changegender <male/female>");
 
    new genderid;
 
    if (!strcmp(gender, "Male", true))              genderid = 1;
    else if (!strcmp(gender, "Female", true))       genderid = 2;
    else                                            genderid = -1;
    
    if (genderid < 0) return SendClientMessage(playerid, 0xDC143CFF, "ERROR: Insert a correct gender (correct gender: Male/Female)");
    
    if (GetPVarInt(playerid, "Gender") == genderid) return SendClientMessage(playerid, 0xDC143CFF, "ERROR: Current gender is already select gender.");
 
    new query[114 +MAX_PLAYER_NAME];
    
    format(query, sizeof(query), "UPDATE `users` SET `gender` = %i WHERE `username` COLLATE latin1_general_cs = '%q'", genderid, ReturnPlayerName(playerid));
    mysql_query(handle, query, false);
 
    new message[62];
    
    format(message, sizeof(query), "ACCOUNT: You have changed your gender to {FFFFFF}\"%s\"", (genderid > 1) ? ("Female"):("Male"));
    SendClientMessage(playerid, 0x00FF00FF, message);
    
    SetPVarInt(playerid, "Gender", genderid);
 
    return 1;
}