#include <open.mp>
#include <a_mysql>
#include <sscanf2>
#include <PAWN.CMD>
#include "../gamemodes/modules/server/textdraws.pwn"

#define SSCANF_NO_NICE_FEATURES

// Server Information

#define SERVER_NAME         "Sunshine City RolePlay"
#define SERVER_MODE         "Open.mp"
#define SERVER_VERSION      "v1.0(beta)"
#define SERVER_THEME        "{EAFF00}"
#define DIALOG_TITLE        "{EAFF00}Sunshine City {FFFFFF} RolePlay"

main()
{
    print("-------------------------------------------------");
    print("| GameMode: Open.mp                             |");
    print("| Developer: Nafiz & Sibbir                     |");
    print("-------------------------------------------------");
}

native WP_Hash(buffer[], len, const str[]);
#define strcpy(%0,%1)   strcat(((%0[0] = 0), %0), %1)

enum PlayerData
{
    pID,
    pTempPass[129],
    pEmail[64],
    pGender,
    pAge,
    pSkin,
    Float:pHealth,
    Float:pArmour,
    Float:pPosX,
    Float:pPosY,
    Float:pPosZ,
    Float:pPosA,
    Float:pCameraX,
    Float:pCameraY,
    Float:pCameraZ,
    pCash,
    pBank
};
new gPlayerData[MAX_PLAYERS][PlayerData];

enum // PLAYER DIALOGS
{
    DIALOG_PLAYER_REGISTER = 1,
    DIALOG_PLAYER_LOGIN,
    DIALOG_SELECT_GENDER,
    DIALOG_PLAYER_AGE,
    DIALOG_PLAYER_EMAIL,
    UNUSED_PLAYER_DIALOG
};
 
new ValidUser[MAX_PLAYERS];
static ReturnPlayerName(playerid)
{
    new string[MAX_PLAYER_NAME];
    GetPlayerName(playerid, string, MAX_PLAYER_NAME);
    return string;
}

ShowRegisterTD(playerid)
{
    TextDrawShowForPlayer(playerid, Background);
    TextDrawShowForPlayer(playerid, Login_GTD[0]);
    TextDrawShowForPlayer(playerid, Login_GTD[1]);
    TextDrawShowForPlayer(playerid, Login_GTD[2]);
    TextDrawShowForPlayer(playerid, Login_GTD[3]);
    TextDrawShowForPlayer(playerid, Login_GTD[4]);
    TextDrawShowForPlayer(playerid, Login_GTD[5]);
    TextDrawShowForPlayer(playerid, Login_GTD[6]);
    TextDrawShowForPlayer(playerid, Login_GTD[7]);
    TextDrawShowForPlayer(playerid, Login_GTD[8]);
    TextDrawShowForPlayer(playerid, Skin);
    TextDrawShowForPlayer(playerid, Name);
    TextDrawShowForPlayer(playerid, box_pass);
    TextDrawShowForPlayer(playerid, box_gender);
    TextDrawShowForPlayer(playerid, box_age);
    TextDrawShowForPlayer(playerid, box_email);
    TextDrawShowForPlayer(playerid, btn_register);
    TextDrawShowForPlayer(playerid, web_url);
    
    PlayerTextDrawSetString(playerid, Login_PTD[playerid][0], "");
    PlayerTextDrawSetString(playerid, Login_PTD[playerid][1], "");
    PlayerTextDrawSetString(playerid, Login_PTD[playerid][2], "");
    PlayerTextDrawSetString(playerid, Login_PTD[playerid][3], "");
    PlayerTextDrawShow(playerid, Login_PTD[playerid][0]);
    PlayerTextDrawShow(playerid, Login_PTD[playerid][1]);
    PlayerTextDrawShow(playerid, Login_PTD[playerid][2]);
    PlayerTextDrawShow(playerid, Login_PTD[playerid][3]);
    SelectTextDraw(playerid, 0xFF1E05FF);
}

HideRegisterTD(playerid)
{
    TextDrawHideForPlayer(playerid, Login_GTD[0]);
    TextDrawHideForPlayer(playerid, Login_GTD[1]);
    TextDrawHideForPlayer(playerid, Login_GTD[2]);
    TextDrawHideForPlayer(playerid, Login_GTD[3]);
    TextDrawHideForPlayer(playerid, Login_GTD[4]);
    TextDrawHideForPlayer(playerid, Login_GTD[5]);
    TextDrawHideForPlayer(playerid, Login_GTD[6]);
    TextDrawHideForPlayer(playerid, Login_GTD[7]);
    TextDrawHideForPlayer(playerid, Login_GTD[8]);
    TextDrawHideForPlayer(playerid, Background);
    TextDrawHideForPlayer(playerid, Skin);
    TextDrawHideForPlayer(playerid, Name);
    TextDrawHideForPlayer(playerid, box_pass);
    TextDrawHideForPlayer(playerid, box_gender);
    TextDrawHideForPlayer(playerid, box_age);
    TextDrawHideForPlayer(playerid, box_email);
    TextDrawHideForPlayer(playerid, btn_register);
    TextDrawHideForPlayer(playerid, web_url);

    PlayerTextDrawHide(playerid, Login_PTD[playerid][0]);
    PlayerTextDrawHide(playerid, Login_PTD[playerid][1]);
    PlayerTextDrawHide(playerid, Login_PTD[playerid][2]);
    PlayerTextDrawHide(playerid, Login_PTD[playerid][3]);
    CancelSelectTextDraw(playerid);
}

ShowLoginTD(playerid)
{
    TextDrawShowForPlayer(playerid, Background);
    TextDrawShowForPlayer(playerid, Login_GTD[0]);
    TextDrawShowForPlayer(playerid, Login_GTD[1]);
    TextDrawShowForPlayer(playerid, Login_GTD[2]);
    TextDrawShowForPlayer(playerid, Login_GTD[3]);
    TextDrawShowForPlayer(playerid, Login_GTD[4]);
    TextDrawShowForPlayer(playerid, Login_GTD[5]);
    TextDrawShowForPlayer(playerid, Login_GTD[7]);
    TextDrawShowForPlayer(playerid, Login_GTD[8]);
    TextDrawShowForPlayer(playerid, Skin);
    TextDrawShowForPlayer(playerid, Name);
    TextDrawShowForPlayer(playerid, box_pass);
    TextDrawShowForPlayer(playerid, box_gender);
    TextDrawShowForPlayer(playerid, box_age);
    TextDrawShowForPlayer(playerid, box_email);
    TextDrawShowForPlayer(playerid, btn_register);
    TextDrawShowForPlayer(playerid, web_url);
    
    PlayerTextDrawSetString(playerid, Login_PTD[playerid][0], "");
    PlayerTextDrawLetterSize(playerid, Login_PTD[playerid][2], 0.250, 1.500);
    PlayerTextDrawLetterSize(playerid, Login_PTD[playerid][3], 0.270, 1.500);
    PlayerTextDrawShow(playerid, Login_PTD[playerid][0]);
    PlayerTextDrawShow(playerid, Login_PTD[playerid][1]);
    PlayerTextDrawShow(playerid, Login_PTD[playerid][2]);
    PlayerTextDrawShow(playerid, Login_PTD[playerid][3]);
    PlayerTextDrawShow(playerid, Login_PTD[playerid][4]);
    SelectTextDraw(playerid, 0xFF1E05FF);
}

HideLoginTD(playerid)
{
    TextDrawHideForPlayer(playerid, Login_GTD[0]);
    TextDrawHideForPlayer(playerid, Login_GTD[1]);
    TextDrawHideForPlayer(playerid, Login_GTD[2]);
    TextDrawHideForPlayer(playerid, Login_GTD[3]);
    TextDrawHideForPlayer(playerid, Login_GTD[4]);
    TextDrawHideForPlayer(playerid, Login_GTD[5]);
    TextDrawHideForPlayer(playerid, Login_GTD[7]);
    TextDrawHideForPlayer(playerid, Login_GTD[8]);
    TextDrawHideForPlayer(playerid, Background);
    TextDrawHideForPlayer(playerid, Skin);
    TextDrawHideForPlayer(playerid, Name);
    TextDrawHideForPlayer(playerid, box_pass);
    TextDrawHideForPlayer(playerid, box_gender);
    TextDrawHideForPlayer(playerid, box_age);
    TextDrawHideForPlayer(playerid, box_email);
    TextDrawHideForPlayer(playerid, btn_register);
    TextDrawHideForPlayer(playerid, web_url);

    PlayerTextDrawHide(playerid, Login_PTD[playerid][0]);
    PlayerTextDrawHide(playerid, Login_PTD[playerid][1]);
    PlayerTextDrawHide(playerid, Login_PTD[playerid][2]);
    PlayerTextDrawHide(playerid, Login_PTD[playerid][3]);
    CancelSelectTextDraw(playerid);
}
 
new MySQL:database;
new QueryOutput[1024];
 
public OnGameModeInit()
{
    database = mysql_connect("127.0.0.1", "root", "", "samp");
    
    if(mysql_errno(database))
    {
        print("[mysql]: Failed to connect mysql database.");
    }
    else
    {
        print("[mysql]: Success connect to mysql database.");
    }

    CreateLoginTDGlobal();
    SendRconCommand("hostname "SERVER_NAME"");
    SetGameModeText(SERVER_MODE);
    return 1;
}
 
public OnGameModeExit()
{
    if (mysql_errno(database) == 0) mysql_close(database);
    return 1;
}
 
public OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, -1, "Connecting To SunShine City.........");
    CreateLoginTDPlayer(playerid);
    return 1;
}
 
public OnPlayerDisconnect(playerid, reason)
{
    SavePlayerData(playerid);
    return 1;
}

forward AfterRegister(playerid);
public AfterRegister(playerid)
{
    HideRegisterTD(playerid);
    TogglePlayerSpectating(playerid, false);
    SpawnPlayer(playerid);
    SetPlayerSkin(playerid, 119);
    SetPlayerColor(playerid, 0xffffffff);
    SetPlayerPos(playerid, 0.0, 0.0, 5.0);
    SendClientMessage(playerid, -1, "Welcome to SunShine");
    return 1;
} 
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_PLAYER_REGISTER:
        {
            if(!response)
            {
                return Kick(playerid);
            }
            if(strlen(inputtext) < 5)
            {
                SendClientMessage(playerid, -1, "Password must be in 5 to 12 char. (Your pass is lower then 5 char)");
                return ShowDialogToPlayer(playerid, DIALOG_PLAYER_REGISTER);
            }
            WP_Hash(gPlayerData[playerid][pTempPass], 129, inputtext);
            PlayerTextDrawSetString(playerid, Login_PTD[playerid][0], "#####");
            PlayerTextDrawShow(playerid, Login_PTD[playerid][0]);
            return 1;
        }
        case DIALOG_SELECT_GENDER:
        {
            if(!response)
            {
                return 1;
            }
            switch(listitem)
            {
                case 0:
                {
                    gPlayerData[playerid][pGender] = 1;
                    PlayerTextDrawSetString(playerid, Login_PTD[playerid][1], "Male");
                }
                case 1:
                {
                    gPlayerData[playerid][pGender] = 2;
                    PlayerTextDrawSetString(playerid, Login_PTD[playerid][1], "Female");
                }
            }
            PlayerTextDrawShow(playerid, Login_PTD[playerid][1]);
            return 1;
        }
        case DIALOG_PLAYER_AGE:
        {   
            if(response)
            {
                new age = strval(inputtext);
                if(!(13 <= age <= 99))
                {
                    ShowDialogToPlayer(playerid, DIALOG_PLAYER_AGE);
                    SendClientMessage(playerid, -1, "You may only enter a number from 13 to 99. Please try again.");
                    return 1;
                }
                gPlayerData[playerid][pAge] = age;
                PlayerTextDrawSetString(playerid, Login_PTD[playerid][2], inputtext);
                PlayerTextDrawShow(playerid, Login_PTD[playerid][2]);
            }
            else
            {
                return 1;
            }
        }
        case DIALOG_PLAYER_EMAIL:
        {
            if(response)
            {
                strcpy(gPlayerData[playerid][pEmail], inputtext, 64);
                PlayerTextDrawSetString(playerid, Login_PTD[playerid][3], inputtext);
                PlayerTextDrawShow(playerid, Login_PTD[playerid][3]);
            }
            else
            {
                return 1;
            }
        }
    }
    return 1;
}

ShowDialogToPlayer(playerid, dialogid)
{
    switch(dialogid)
    {
        case DIALOG_PLAYER_REGISTER:
        {
            ShowPlayerDialog(playerid, DIALOG_PLAYER_REGISTER, DIALOG_STYLE_INPUT, "SunShine Register Panel", "Enter a strong password for your Account.\nMinimun 5 char and Max 12 char.\n(Note: Remember this password you will need this for next login)", "Submit", "Cancel");
        }
        case DIALOG_SELECT_GENDER:
        {
            ShowPlayerDialog(playerid, DIALOG_SELECT_GENDER, DIALOG_STYLE_TABLIST_HEADERS, "Select Gender", "NAME\tID\nMale\t1\nFemale\t2", "submit", "cancel");
        }
        case DIALOG_PLAYER_AGE:
        {
            ShowPlayerDialog(playerid, DIALOG_PLAYER_AGE, DIALOG_STYLE_INPUT, "SunShine Register Panel", "What age would you like your character to be (Between 13-99 years old):", "Submit", "Cancel");
        }
        case DIALOG_PLAYER_EMAIL:
        {
            ShowPlayerDialog(playerid, DIALOG_PLAYER_EMAIL, DIALOG_STYLE_INPUT, "SunShine Register Panel", "Enter a name for your mali. Ex: nafiz1029\n(Note: Do not use @gamil.com just enter the name).", "Submit", "Cancel");
        }
    }
    return 1;
}
public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
    if(clickedid == box_pass)
    {
        if(ValidUser[playerid] == 0)  
        {
            ShowDialogToPlayer(playerid, DIALOG_PLAYER_REGISTER);
        }
        return 1;
    }
    if(clickedid == box_gender)
    {
        if(ValidUser[playerid] == 0)  
        {
            ShowDialogToPlayer(playerid, DIALOG_SELECT_GENDER);
        }
        return 1;
    }
    if(clickedid == box_age)
    {
        if(ValidUser[playerid] == 0)  
        {
            ShowDialogToPlayer(playerid, DIALOG_PLAYER_AGE);
        }
        return 1;
    }
    if(clickedid == box_email)
    {
        if(ValidUser[playerid] == 0)  
        {
            ShowDialogToPlayer(playerid, DIALOG_PLAYER_EMAIL);\
        }
        return 1;
    }
    if(clickedid == btn_register)
    {
        if(ValidUser[playerid] == 0)  
        {   
            if(isnull(gPlayerData[playerid][pTempPass]))
            {
                return SendClientMessage(playerid, -1, "Set a password first.");
            }
            if(!gPlayerData[playerid][pAge])
            {
                return SendClientMessage(playerid, -1, "Set your age first.");
            }
            if(!gPlayerData[playerid][pEmail])
            {
                return SendClientMessage(playerid, -1, "Set a email first.");
            }
            if(!gPlayerData[playerid][pGender])
            {
                return SendClientMessage(playerid, -1, "Set your gender first.");
            }
            mysql_format(database, QueryOutput, sizeof(QueryOutput), "INSERT INTO `users` (username, password, age, gender, email) VALUES(\"%s\", \"%s\", %i, %i, \"%s\")", ReturnPlayerName(playerid), gPlayerData[playerid][pTempPass], gPlayerData[playerid][pAge], gPlayerData[playerid][pGender], gPlayerData[playerid][pEmail]);
            mysql_tquery(database, QueryOutput, "AfterRegister", "i", playerid);
        }
        return 1;
    }
    return 1;
}
 
public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
    
    return 1;
}

ShowInterpolateCameraScenes(playerid)
{
    switch(random(11))
    {
        case 0: {
            InterpolateCameraPos(playerid, 2001.022338, -1680.001831, 111.524520, 1847.486328, -1588.119262, 45.335948, 10000);
            InterpolateCameraLookAt(playerid, 1996.748535, -1677.679321, 110.366386, 1842.846801, -1588.866577, 43.628067, 6000);
        }
        case 1: {
            InterpolateCameraPos(playerid, 1350.769897, -1161.625610, 63.912643, 1345.028564, -1381.431640, 37.928005, 10000);
            InterpolateCameraLookAt(playerid, 1350.744140, -1165.983520, 61.461566, 1349.314086, -1383.640136, 36.602577, 6000);
        }
        case 2: {
            InterpolateCameraPos(playerid, 1715.645019, -1938.294555, 14.028053, 1714.797729, -1859.568725, 16.619020, 10000);
            InterpolateCameraLookAt(playerid, 1715.549194, -1933.334594, 14.652102, 1719.508422, -1858.186523, 15.670925, 10000);
        }
        case 3: {
            InterpolateCameraPos(playerid, 2527.106445, -1651.230468, 59.606048, 2258.847900, -1651.125366, 33.323886, 10000);
            InterpolateCameraLookAt(playerid, 2523.139892, -1653.018554, 57.142471, 2254.557861, -1652.318969, 31.049913, 10000);
        }
        case 4: {
            InterpolateCameraPos(playerid, 2209.850585, -1115.027709, 37.585510, 2019.370605, -1123.279907, 45.939300, 10000);
            InterpolateCameraLookAt(playerid, 2205.017089, -1116.304321, 37.493427, 2017.365600, -1127.638549, 44.531455, 10000);
        }
        case 5: {
            InterpolateCameraPos(playerid, 1828.507446, -1052.825073, 30.756277, 1583.096679, -1035.206054, 32.867546, 10000);
            InterpolateCameraLookAt(playerid, 1823.512207, -1053.039550, 30.793386, 1584.801879, -1039.839111, 32.075389, 10000);
        }
        case 6: {
            InterpolateCameraPos(playerid, 1531.205566, -978.054687, 60.876388, 1461.443481, -810.305114, 77.579307, 10000);
            InterpolateCameraLookAt(playerid, 1526.846191, -975.952758, 59.620300, 1456.799926, -812.138061, 77.300292, 10000);
        }
        case 7: {
            InterpolateCameraPos(playerid, 635.315673, -1780.251342, 21.155647, 417.544250, -1759.125366, 26.359794, 15000);
            InterpolateCameraLookAt(playerid, 630.351623, -1779.681518, 20.973197, 415.232757, -1763.481567, 25.535095, 10000);
        }
        case 8: {
            InterpolateCameraPos(playerid, 836.923767, -1779.394165, 18.188320, 970.047790, -1792.450439, 21.380487, 15000);
            InterpolateCameraLookAt(playerid, 840.450439, -1775.850219, 18.139299, 966.497192, -1789.023559, 20.574161, 10000);
        }

        case 9:
        {
            InterpolateCameraPos(playerid, 1534.284423, -1312.871093, 513.042114, 1561.539794, -1314.386108, 16.426090, 25000);
            InterpolateCameraLookAt(playerid, 1534.702758, -1312.993041, 508.061126, 1558.089111, -1313.615966, 19.961624, 10000);
        }
        case 10:
        {
            InterpolateCameraPos(playerid, 1402.380126, -1216.866333, 350.959869, 1660.696655, -1303.045410, 74.042839, 7000);
            InterpolateCameraLookAt(playerid, 1404.336425, -1219.865234, 347.469909, 1657.485961, -1304.525756, 77.578369, 7000);
        }
    }
}

SetPlayerToSpawn(playerid)
{
    SetSpawnInfo(playerid, 0, gPlayerData[playerid][pSkin], gPlayerData[playerid][pPosX], gPlayerData[playerid][pPosY], gPlayerData[playerid][pPosZ], gPlayerData[playerid][pPosA]);
    SpawnPlayer(playerid);
}

SavePlayerData(playerid)
{
    GetPlayerPos(playerid, gPlayerData[playerid][pPosX], gPlayerData[playerid][pPosY], gPlayerData[playerid][pPosZ]);
    GetPlayerCameraPos(playerid, gPlayerData[playerid][pCameraX], gPlayerData[playerid][pCameraY], gPlayerData[playerid][pCameraZ]);
    GetPlayerFacingAngle(playerid, gPlayerData[playerid][pPosA]);
    GetPlayerHealth(playerid, gPlayerData[playerid][pHealth]);
    GetPlayerArmour(playerid, gPlayerData[playerid][pArmour]);

    mysql_format(database, QueryOutput, sizeof(QueryOutput), "UPDATE users SET pos_x = %f, pos_y = %f, pos_z = %f, facing_angle = %f,  camera_x = %f,  camera_y = %f,  camera_z = %f, health = %f, armour = %f, cash = %i, bank = %i, skin = %i",
        gPlayerData[playerid][pPosX], gPlayerData[playerid][pPosY], gPlayerData[playerid][pPosZ], gPlayerData[playerid][pPosA], gPlayerData[playerid][pCameraX], gPlayerData[playerid][pCameraY], gPlayerData[playerid][pCameraZ],
        gPlayerData[playerid][pHealth], gPlayerData[playerid][pArmour], gPlayerData[playerid][pCash], gPlayerData[playerid][pBank], gPlayerData[playerid][pSkin]);
    mysql_tquery(database, QueryOutput);
}

LoadUserAccount(playerid)
{
    cache_get_value_name_int(0, "id", gPlayerData[playerid][pID]);
    // Loading User Position
    cache_get_value_name_float(0, "pos_x", gPlayerData[playerid][pPosX]);
    cache_get_value_name_float(0, "pos_y", gPlayerData[playerid][pPosY]);
    cache_get_value_name_float(0, "pos_z", gPlayerData[playerid][pPosZ]);
    cache_get_value_name_float(0, "facing_angle", gPlayerData[playerid][pPosA]);
    cache_get_value_name_float(0, "camera_x", gPlayerData[playerid][pCameraX]);
    cache_get_value_name_float(0, "camera_y", gPlayerData[playerid][pCameraY]);
    cache_get_value_name_float(0, "camera_z", gPlayerData[playerid][pCameraZ]);
    // Loading Health, Armour & Cash
    cache_get_value_name_float(0, "health", gPlayerData[playerid][pHealth]);
    cache_get_value_name_float(0, "armour", gPlayerData[playerid][pArmour]);
    cache_get_value_name_int(0, "cash", gPlayerData[playerid][pCash]);
    cache_get_value_name_int(0, "bank", gPlayerData[playerid][pBank]); 
    // Loading Other Stuffs
    cache_get_value_name_int(0, "skin", gPlayerData[playerid][pSkin]);
    cache_get_value_name_int(0, "age", gPlayerData[playerid][pAge]);
    cache_get_value_name_int(0, "gender", gPlayerData[playerid][pGender]);
    cache_get_value_name(0, "email", gPlayerData[playerid][pEmail], 64);

    SetPlayerHealth(playerid, gPlayerData[playerid][pHealth]);
    SetPlayerArmour(playerid, gPlayerData[playerid][pArmour]);
    GivePlayerMoney(playerid, gPlayerData[playerid][pCash]);
    SetPlayerToSpawn(playerid);
}

GetPlayerLastLogin(playerid)
{
    new Cache:data, lastlogin[128];
    mysql_format(database, QueryOutput, sizeof(QueryOutput), "SELECT lastlogin from users WHERE username = \"%s\"", ReturnPlayerName(playerid));
    data = mysql_query(database, QueryOutput);
    if(cache_num_rows())
    {
        for(new i = 0; i < cache_num_rows(); i ++)
        {
            cache_get_value_name(i,"lastlogin", lastlogin, 128);
        }
    }
    new string[128];
    format(string, sizeof(string), "%s", lastlogin);
    cache_delete(data);
    return string;
}

GetPlayerEmail(playerid)
{
    new Cache:data, email[64];
    mysql_format(database, QueryOutput, sizeof(QueryOutput), "SELECT email from users WHERE username = \"%s\"", ReturnPlayerName(playerid));
    data = mysql_query(database, QueryOutput);
    if(cache_num_rows())
    {
        for(new i = 0; i < cache_num_rows(); i ++)
        {
            cache_get_value_name(i,"email", email, 64);
        }
    }
    new string[128];
    format(string, sizeof(string), "%s", email);
    cache_delete(data);
    return string;
}

GetPlayerGender(playerid)
{
    new Cache:data, gender;
    mysql_format(database, QueryOutput, sizeof(QueryOutput), "SELECT email from users WHERE username = \"%s\"", ReturnPlayerName(playerid));
    data = mysql_query(database, QueryOutput);
    if(cache_num_rows())
    {
        for(new i = 0; i < cache_num_rows(); i ++)
        {
            cache_get_value_name_int(i,"gender", gender);
        }
    }
    new string[128];
    switch(gender)
    {
        case 0: format(string, sizeof(string), "Male");
        case 1: format(string, sizeof(string), "FeMale");
    }
    
    cache_delete(data);
    return string;
}

forward CheckValidUser(playerid);
public CheckValidUser(playerid)
{
    new result;
    cache_get_row_count(result);
    if(!result)
    {
        ValidUser[playerid] = 0;
        ShowRegisterTD(playerid);
        return 1;
    }
    ValidUser[playerid] = 1;
    new lastlogin[128], email[64], gender[24];
    
    format(gender, sizeof(gender), "%s", GetPlayerGender(playerid));
    PlayerTextDrawSetString(playerid, Login_PTD[playerid][1], gender);

    format(lastlogin, sizeof(lastlogin), "%s", GetPlayerLastLogin(playerid));
    PlayerTextDrawSetString(playerid, Login_PTD[playerid][2], lastlogin);

    format(email, sizeof(email), "%s", GetPlayerEmail(playerid));
    PlayerTextDrawSetString(playerid, Login_PTD[playerid][3], email);
    
    ShowLoginTD(playerid);
    return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
    ShowInterpolateCameraScenes(playerid);
    mysql_format(database, QueryOutput, sizeof(QueryOutput), "SELECT * FROM samp.users WHERE username = \"%s\"", ReturnPlayerName(playerid));
    mysql_tquery(database, QueryOutput, "CheckValidUser", "i", playerid);
}