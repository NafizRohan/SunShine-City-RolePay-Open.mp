ReturnPlayerName(playerid)
{
    new string[MAX_PLAYER_NAME];
    GetPlayerName(playerid, string, MAX_PLAYER_NAME);
    return string;
}

SetPlayerHealthEx(playerid, Float:Health)
{
	if(!gPlayerData[playerid][pLoggedin]) return 0;
    SetPlayerHealth(playerid, Health);
    mysql_format(database, QueryOutput, sizeof(QueryOutput), "UPDATE users SET health = %f WHERE id = %i", Health, gPlayerData[playerid][pID]);
    mysql_tquery(database, QueryOutput);
	return 1;
}

SetPlayerArmourEx(playerid, Float:Armour)
{
	if(!gPlayerData[playerid][pLoggedin]) return 0;
    SetPlayerArmour(playerid, Armour);
    mysql_format(database, QueryOutput, sizeof(QueryOutput), "UPDATE users SET armour = %f WHERE id = %i", Armour, gPlayerData[playerid][pID]);
    mysql_tquery(database, QueryOutput);
	return 1;
}

GivePlayerMoneyEx(playerid, Money)
{
	if(!gPlayerData[playerid][pLoggedin]) return 0;
    GivePlayerMoney(playerid, Money);
    mysql_format(database, QueryOutput, sizeof(QueryOutput), "UPDATE users SET cash = %f WHERE id = %i", Money, gPlayerData[playerid][pID]);
    mysql_tquery(database, QueryOutput);
	return 1;
}


SendMessage(playerid, color, const text[], {Float,_}:...)
{
	static
  	    args,
	    str[192];

	if((args = numargs()) <= 3)
	{
	    SendClientMessage(playerid, color, text);
	}
	else
	{
		while(--args >= 3)
		{
			#emit LCTRL 	5
			#emit LOAD.alt 	args
			#emit SHL.C.alt 2
			#emit ADD.C 	12
			#emit ADD
			#emit LOAD.I
			#emit PUSH.pri
		}
		#emit PUSH.S 	text
		#emit PUSH.C 	192
		#emit PUSH.C 	str
		#emit PUSH.S	8
		#emit SYSREQ.C 	format
		#emit LCTRL 	5
		#emit SCTRL 	4

		SendClientMessage(playerid, color, str);

		#emit RETN
	}
	return 1;
}

ClearChat(playerid)
{
	for(new i = 0; i < 29; i ++)
	{
	    SendClientMessage(playerid, -1, " ");
	}
}

SavePlayerData(playerid)
{
	if(!gPlayerData[playerid][pLoggedin]) return 0;
    GetPlayerPos(playerid, gPlayerData[playerid][pPosX], gPlayerData[playerid][pPosY], gPlayerData[playerid][pPosZ]);
    GetPlayerCameraPos(playerid, gPlayerData[playerid][pCameraX], gPlayerData[playerid][pCameraY], gPlayerData[playerid][pCameraZ]);
    GetPlayerFacingAngle(playerid, gPlayerData[playerid][pPosA]);
    GetPlayerHealth(playerid, gPlayerData[playerid][pHealth]);
    GetPlayerArmour(playerid, gPlayerData[playerid][pArmour]);
	gPlayerData[playerid][pCash] = GetPlayerMoney(playerid);

    mysql_format(database, QueryOutput, sizeof(QueryOutput), "UPDATE users SET pos_x = %f, pos_y = %f, pos_z = %f, facing_angle = %f,  camera_x = %f,  camera_y = %f,  camera_z = %f, health = %f, armour = %f, cash = %i, bank = %i, skin = %i",
        gPlayerData[playerid][pPosX], gPlayerData[playerid][pPosY], gPlayerData[playerid][pPosZ], gPlayerData[playerid][pPosA], gPlayerData[playerid][pCameraX], gPlayerData[playerid][pCameraY], gPlayerData[playerid][pCameraZ],
        gPlayerData[playerid][pHealth], gPlayerData[playerid][pArmour], gPlayerData[playerid][pCash], gPlayerData[playerid][pBank], gPlayerData[playerid][pSkin]);
    mysql_tquery(database, QueryOutput);
	return 1;
}

SetPlayerToSpawn(playerid)
{
	if(!gPlayerData[playerid][pLoggedin]) return 0;
    if(gPlayerData[playerid][pPosX] == 0.0 && gPlayerData[playerid][pPosY] == 0.0 && gPlayerData[playerid][pPosZ] == 0.0)
    {
        gPlayerData[playerid][pPosX] = 1543.8722;
        gPlayerData[playerid][pPosY] = -1353.5990;
        gPlayerData[playerid][pPosZ] = 329.4738;
    }
    SetSpawnInfo(playerid, 0, gPlayerData[playerid][pSkin], gPlayerData[playerid][pPosX], gPlayerData[playerid][pPosY], gPlayerData[playerid][pPosZ], gPlayerData[playerid][pPosA]);
    SpawnPlayer(playerid);
    SetPlayerHealth(playerid, gPlayerData[playerid][pHealth]);
	return 1;
}

ShowMainMenuCamera(playerid) 
{
    ShowInterpolateCameraScenes(playerid);
    mysql_format(database, QueryOutput, sizeof(QueryOutput), "SELECT id FROM users WHERE username = \"%s\"", ReturnPlayerName(playerid));
    mysql_tquery(database, QueryOutput, "CheckValidUser", "i", playerid);
	return 1;
}