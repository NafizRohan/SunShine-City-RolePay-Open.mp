#include <open.mp>
#include <a_mysql>
#include <sscanf2>
#include <PAWN.CMD>
#include "../gamemodes/modules/server/textdraws.pwn"

#define SSCANF_NO_NICE_FEATURES
 
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
 
 
static ReturnPlayerName(playerid)
{
    new string[MAX_PLAYER_NAME];
    GetPlayerName(playerid, string, MAX_PLAYER_NAME);
    return string;
}
 
new MySQL:database;
 
public OnGameModeInit()
{
    database = mysql_connect("127.0.0.1", "root", "", "test");
    
    if(mysql_errno(database))
    {
        print("[mysql]: Failed to connect mysql database.");
    }
    else
    {
        print("[mysql]: Success connect to mysql database.");
    }


    CreateLoginTDGlobal();
    return 1;
}
 
public OnGameModeExit()
{
    if (mysql_errno(database) == 0) mysql_close(database);
    return 1;
}
 
public OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, -1, "Connecting aTo SunShine City.........");
    return 1;
}
 
public OnPlayerDisconnect(playerid, reason)
{
 
    return 1;
}
 
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    
    return 1;
}
 
public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
    
    return 1;
}
