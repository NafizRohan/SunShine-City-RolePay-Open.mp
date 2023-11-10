// Login Textdraws....................//
new Text: Background;
new Text: Skin;
new Text: Name;
new Text: box_pass;
new Text: box_gender;
new Text: box_age;
new Text: box_email;
new Text: btn_register;
new Text: web_url;
new Text: Login_GTD[9];
new PlayerText: Login_PTD[MAX_PLAYERS][5];

CreateLoginTDGlobal()
{
    Background = TextDrawCreate(162.000, 121.000, "_");
    TextDrawLetterSize(Background, 0.070, 25.600);
    TextDrawTextSize(Background, 480.000, 0.000);
    TextDrawAlignment(Background, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Background, -1);
    TextDrawUseBox(Background, true);
    TextDrawBoxColour(Background, 255);
    TextDrawSetShadow(Background, 1);
    TextDrawSetOutline(Background, 1);
    TextDrawBackgroundColour(Background, 150);
    TextDrawFont(Background, TEXT_DRAW_FONT_1);
    TextDrawSetProportional(Background, true);
    
    Login_GTD[0] = TextDrawCreate(317.000, 121.000, "SunShine City");
    TextDrawLetterSize(Login_GTD[0], 0.459, 2.899);
    TextDrawAlignment(Login_GTD[0], TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(Login_GTD[0], -65281);
    TextDrawSetShadow(Login_GTD[0], 1);
    TextDrawSetOutline(Login_GTD[0], 1);
    TextDrawBackgroundColour(Login_GTD[0], 255);
    TextDrawFont(Login_GTD[0], TEXT_DRAW_FONT_2);
    TextDrawSetProportional(Login_GTD[0], true);

    Login_GTD[1] = TextDrawCreate(292.000, 150.000, "LD_SPAC:white");
    TextDrawTextSize(Login_GTD[1], -2.000, 159.000);
    TextDrawAlignment(Login_GTD[1], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Login_GTD[1], -1);
    TextDrawSetShadow(Login_GTD[1], 0);
    TextDrawSetOutline(Login_GTD[1], 0);
    TextDrawBackgroundColour(Login_GTD[1], 255);
    TextDrawFont(Login_GTD[1], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(Login_GTD[1], true);

    Login_GTD[2] = TextDrawCreate(285.000, 160.000, "LD_SPAC:white");
    TextDrawTextSize(Login_GTD[2], -2.000, 139.000);
    TextDrawAlignment(Login_GTD[2], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Login_GTD[2], -1);
    TextDrawSetShadow(Login_GTD[2], 0);
    TextDrawSetOutline(Login_GTD[2], 0);
    TextDrawBackgroundColour(Login_GTD[2], 255);
    TextDrawFont(Login_GTD[2], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(Login_GTD[2], true);

    Login_GTD[3] = TextDrawCreate(299.000, 160.000, "LD_SPAC:white");
    TextDrawTextSize(Login_GTD[3], -2.000, 139.000);
    TextDrawAlignment(Login_GTD[3], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Login_GTD[3], -1);
    TextDrawSetShadow(Login_GTD[3], 0);
    TextDrawSetOutline(Login_GTD[3], 0);
    TextDrawBackgroundColour(Login_GTD[3], 255);
    TextDrawFont(Login_GTD[3], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(Login_GTD[3], true);

    Login_GTD[4] = TextDrawCreate(336.000, 158.000, "Password:");
    TextDrawLetterSize(Login_GTD[4], 0.250, 1.800);
    TextDrawAlignment(Login_GTD[4], TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(Login_GTD[4], -1);
    TextDrawSetShadow(Login_GTD[4], 1);
    TextDrawSetOutline(Login_GTD[4], 1);
    TextDrawBackgroundColour(Login_GTD[4], 150);
    TextDrawFont(Login_GTD[4], TEXT_DRAW_FONT_2);
    TextDrawSetProportional(Login_GTD[4], true);

    Login_GTD[5] = TextDrawCreate(337.000, 182.000, "Gender_____:");
    TextDrawLetterSize(Login_GTD[5], 0.250, 1.800);
    TextDrawAlignment(Login_GTD[5], TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(Login_GTD[5], -1);
    TextDrawSetShadow(Login_GTD[5], 1);
    TextDrawSetOutline(Login_GTD[5], 1);
    TextDrawBackgroundColour(Login_GTD[5], 150);
    TextDrawFont(Login_GTD[5], TEXT_DRAW_FONT_2);
    TextDrawSetProportional(Login_GTD[5], true);

    Login_GTD[6] = TextDrawCreate(337.000, 206.000, "AGE___________:");
    TextDrawLetterSize(Login_GTD[6], 0.250, 1.800);
    TextDrawAlignment(Login_GTD[6], TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(Login_GTD[6], -1);
    TextDrawSetShadow(Login_GTD[6], 1);
    TextDrawSetOutline(Login_GTD[6], 1);
    TextDrawBackgroundColour(Login_GTD[6], 150);
    TextDrawFont(Login_GTD[6], TEXT_DRAW_FONT_2);
    TextDrawSetProportional(Login_GTD[6], true);

    Login_GTD[7] = TextDrawCreate(337.000, 230.000, "eMAIL________:");
    TextDrawLetterSize(Login_GTD[7], 0.250, 1.800);
    TextDrawAlignment(Login_GTD[7], TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(Login_GTD[7], -1);
    TextDrawSetShadow(Login_GTD[7], 1);
    TextDrawSetOutline(Login_GTD[7], 1);
    TextDrawBackgroundColour(Login_GTD[7], 150);
    TextDrawFont(Login_GTD[7], TEXT_DRAW_FONT_2);
    TextDrawSetProportional(Login_GTD[7], true);

    Login_GTD[8] = TextDrawCreate(305.000, 265.000, "LD_SPAC:white");
    TextDrawTextSize(Login_GTD[8], 170.000, 4.000);
    TextDrawAlignment(Login_GTD[8], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Login_GTD[8], -2686721);
    TextDrawSetShadow(Login_GTD[8], 0);
    TextDrawSetOutline(Login_GTD[8], 0);
    TextDrawBackgroundColour(Login_GTD[8], 255);
    TextDrawFont(Login_GTD[8], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(Login_GTD[8], true);

    

    Skin = TextDrawCreate(133.000, 141.000, "_");
    TextDrawTextSize(Skin, 160.000, 160.000);
    TextDrawAlignment(Skin, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Skin, -1);
    TextDrawSetShadow(Skin, 0);
    TextDrawSetOutline(Skin, 0);
    TextDrawBackgroundColour(Skin, 0);
    TextDrawFont(Skin, TEXT_DRAW_FONT_MODEL_PREVIEW);
    TextDrawSetProportional(Skin, false);
    TextDrawSetPreviewModel(Skin, 0);
    TextDrawSetPreviewRot(Skin, 0.000, 0.000, 0.000, 1.000);
    TextDrawSetPreviewVehicleColours(Skin, 0, 0);

    Name = TextDrawCreate(222.000, 312.000, "Nafiz_Smith");
    TextDrawLetterSize(Name, 0.280, 2.699);
    TextDrawTextSize(Name, 23.000, 109.000);
    TextDrawAlignment(Name, TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(Name, -1);
    TextDrawUseBox(Name, true);
    TextDrawBoxColour(Name, 16777215);
    TextDrawSetShadow(Name, 1);
    TextDrawSetOutline(Name, 1);
    TextDrawBackgroundColour(Name, 150);
    TextDrawFont(Name, TEXT_DRAW_FONT_1);
    TextDrawSetProportional(Name, true);

    box_pass = TextDrawCreate(370.000, 158.000, "LD_SPAC:white");
    TextDrawTextSize(box_pass, 99.000, 19.000);
    TextDrawAlignment(box_pass, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(box_pass, -2686721);
    TextDrawSetShadow(box_pass, 0);
    TextDrawSetOutline(box_pass, 0);
    TextDrawBackgroundColour(box_pass, 255);
    TextDrawFont(box_pass, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(box_pass, true);
    TextDrawSetSelectable(box_pass, true);

    box_gender = TextDrawCreate(370.000, 182.000, "LD_SPAC:white");
    TextDrawTextSize(box_gender, 99.000, 19.000);
    TextDrawAlignment(box_gender, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(box_gender, -2686721);
    TextDrawSetShadow(box_gender, 0);
    TextDrawSetOutline(box_gender, 0);
    TextDrawBackgroundColour(box_gender, 255);
    TextDrawFont(box_gender, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(box_gender, true);
    TextDrawSetSelectable(box_gender, true);

    box_age = TextDrawCreate(370.000, 206.000, "LD_SPAC:white");
    TextDrawTextSize(box_age, 99.000, 19.000);
    TextDrawAlignment(box_age, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(box_age, -2686721);
    TextDrawSetShadow(box_age, 0);
    TextDrawSetOutline(box_age, 0);
    TextDrawBackgroundColour(box_age, 255);
    TextDrawFont(box_age, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(box_age, true);
    TextDrawSetSelectable(box_age, true);

    box_email = TextDrawCreate(370.000, 230.000, "LD_SPAC:white");
    TextDrawTextSize(box_email, 99.000, 19.000);
    TextDrawAlignment(box_email, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(box_email, -2686721);
    TextDrawSetShadow(box_email, 0);
    TextDrawSetOutline(box_email, 0);
    TextDrawBackgroundColour(box_email, 255);
    TextDrawFont(box_email, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(box_email, true);
    TextDrawSetSelectable(box_email, true);

    btn_register = TextDrawCreate(388.000, 277.000, "Register");
    TextDrawLetterSize(btn_register, 0.509, 3.299);
    TextDrawTextSize(btn_register, 18.000, 125.000);
    TextDrawAlignment(btn_register, TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(btn_register, -1);
    TextDrawUseBox(btn_register, true);
    TextDrawBoxColour(btn_register, -2686721);
    TextDrawSetShadow(btn_register, 0);
    TextDrawSetOutline(btn_register, -1);
    TextDrawBackgroundColour(btn_register, 150);
    TextDrawFont(btn_register, TEXT_DRAW_FONT_2);
    TextDrawSetProportional(btn_register, true);
    TextDrawSetSelectable(btn_register, true);

    web_url = TextDrawCreate(480.000, 342.000, "sunshinecity-rp.com");
    TextDrawLetterSize(web_url, 0.220, 0.999);
    TextDrawAlignment(web_url, TEXT_DRAW_ALIGN_RIGHT);
    TextDrawColour(web_url, -1);
    TextDrawSetShadow(web_url, 1);
    TextDrawSetOutline(web_url, 1);
    TextDrawBackgroundColour(web_url, 150);
    TextDrawFont(web_url, TEXT_DRAW_FONT_1);
    TextDrawSetProportional(web_url, true);
}

CreateLoginTDPlayer(playerid)
{
    Login_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 420.000, 161.000, "######");
    PlayerTextDrawLetterSize(playerid, Login_PTD[playerid][0], 0.300, 1.500);
    PlayerTextDrawTextSize(playerid, Login_PTD[playerid][0], 20.000, 95.000);
    PlayerTextDrawAlignment(playerid, Login_PTD[playerid][0], TEXT_DRAW_ALIGN_CENTER);
    PlayerTextDrawColour(playerid, Login_PTD[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, Login_PTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, Login_PTD[playerid][0], -1);
    PlayerTextDrawBackgroundColour(playerid, Login_PTD[playerid][0], 150);
    PlayerTextDrawFont(playerid, Login_PTD[playerid][0], TEXT_DRAW_FONT_1);
    PlayerTextDrawSetProportional(playerid, Login_PTD[playerid][0], true);

    Login_PTD[playerid][1] = CreatePlayerTextDraw(playerid, 420.000, 184.000, "Female");
    PlayerTextDrawLetterSize(playerid, Login_PTD[playerid][1], 0.300, 1.500);
    PlayerTextDrawTextSize(playerid, Login_PTD[playerid][1], 20.000, 95.000);
    PlayerTextDrawAlignment(playerid, Login_PTD[playerid][1], TEXT_DRAW_ALIGN_CENTER);
    PlayerTextDrawColour(playerid, Login_PTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, Login_PTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, Login_PTD[playerid][1], -1);
    PlayerTextDrawBackgroundColour(playerid, Login_PTD[playerid][1], 150);
    PlayerTextDrawFont(playerid, Login_PTD[playerid][1], TEXT_DRAW_FONT_1);
    PlayerTextDrawSetProportional(playerid, Login_PTD[playerid][1], true);

    Login_PTD[playerid][2] = CreatePlayerTextDraw(playerid, 420.000, 208.000, "99");
    PlayerTextDrawLetterSize(playerid, Login_PTD[playerid][2], 0.300, 1.500);
    PlayerTextDrawTextSize(playerid, Login_PTD[playerid][2], 20.000, 95.000);
    PlayerTextDrawAlignment(playerid, Login_PTD[playerid][2], TEXT_DRAW_ALIGN_CENTER);
    PlayerTextDrawColour(playerid, Login_PTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, Login_PTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, Login_PTD[playerid][2], -1);
    PlayerTextDrawBackgroundColour(playerid, Login_PTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, Login_PTD[playerid][2], TEXT_DRAW_FONT_1);
    PlayerTextDrawSetProportional(playerid, Login_PTD[playerid][2], true);

    Login_PTD[playerid][3] = CreatePlayerTextDraw(playerid, 420.000, 232.000, "nafizrohan1029");
    PlayerTextDrawLetterSize(playerid, Login_PTD[playerid][3], 0.300, 1.500);
    PlayerTextDrawTextSize(playerid, Login_PTD[playerid][3], 20.000, 95.000);
    PlayerTextDrawAlignment(playerid, Login_PTD[playerid][3], TEXT_DRAW_ALIGN_CENTER);
    PlayerTextDrawColour(playerid, Login_PTD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, Login_PTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, Login_PTD[playerid][3], -1);
    PlayerTextDrawBackgroundColour(playerid, Login_PTD[playerid][3], 150);
    PlayerTextDrawFont(playerid, Login_PTD[playerid][3], TEXT_DRAW_FONT_1);
    PlayerTextDrawSetProportional(playerid, Login_PTD[playerid][3], true);

    Login_PTD[playerid][4] = CreatePlayerTextDraw(playerid, 337.000, 206.000, "Last Login_:");
    PlayerTextDrawLetterSize(playerid, Login_PTD[playerid][4], 0.219, 1.799);
    PlayerTextDrawAlignment(playerid, Login_PTD[playerid][4], TEXT_DRAW_ALIGN_CENTER);
    PlayerTextDrawColour(playerid, Login_PTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, Login_PTD[playerid][4], 1);
    PlayerTextDrawSetOutline(playerid, Login_PTD[playerid][4], 1);
    PlayerTextDrawBackgroundColour(playerid, Login_PTD[playerid][4], 150);
    PlayerTextDrawFont(playerid, Login_PTD[playerid][4], TEXT_DRAW_FONT_2);
    PlayerTextDrawSetProportional(playerid, Login_PTD[playerid][4], true);
}

// My Assets
new Text: BG;
new Text: Header;
new Text: Title;
new Text: House_View;
new Text: House_TBG;
new Text: House_Text;
new Text: Vehicle_View;
new Text: Vehicle_TBG;
new Text: Vehicle_Text;
new Text: Jewellery_View;
new Text: Jewellery_TBG;
new Text: Jewellery_Text;
new Text: Close_BTN;
new Text: Close_Text;
new Text: Web_Url;

new PlayerText: House_Count[MAX_PLAYERS];
new PlayerText: Vehicle_Count[MAX_PLAYERS];

CreateMyAssetsTD()
{
    BG = TextDrawCreate(149.000, 119.000, "LD_SPAC:white");
    TextDrawTextSize(BG, 345.000, 228.000);
    TextDrawAlignment(BG, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(BG, -2686721);
    TextDrawSetShadow(BG, 0);
    TextDrawSetOutline(BG, 0);
    TextDrawBackgroundColour(BG, 255);
    TextDrawFont(BG, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(BG, true);

    Header = TextDrawCreate(149.000, 105.000, "LD_SPAC:white");
    TextDrawTextSize(Header, 345.000, 28.000);
    TextDrawAlignment(Header, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Header, 255);
    TextDrawSetShadow(Header, 0);
    TextDrawSetOutline(Header, 0);
    TextDrawBackgroundColour(Header, 255);
    TextDrawFont(Header, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(Header, true);

    Title = TextDrawCreate(289.000, 111.000, "My Assets");
    TextDrawLetterSize(Title, 0.300, 1.500);
    TextDrawAlignment(Title, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Title, -1);
    TextDrawSetShadow(Title, 1);
    TextDrawSetOutline(Title, 1);
    TextDrawBackgroundColour(Title, 150);
    TextDrawFont(Title, TEXT_DRAW_FONT_2);
    TextDrawSetProportional(Title, true);

    House_View = TextDrawCreate(144.000, 132.000, "_");
    TextDrawTextSize(House_View, 127.000, 124.000);
    TextDrawAlignment(House_View, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(House_View, -1);
    TextDrawSetShadow(House_View, 0);
    TextDrawSetOutline(House_View, 0);
    TextDrawBackgroundColour(House_View, 1536);
    TextDrawFont(House_View, TEXT_DRAW_FONT_MODEL_PREVIEW);
    TextDrawSetProportional(House_View, false);
    TextDrawSetPreviewModel(House_View, 19522);
    TextDrawSetPreviewRot(House_View, 0.000, 0.000, 38.000, 0.499);
    TextDrawSetPreviewVehicleColours(House_View, 0, 0);

    House_TBG = TextDrawCreate(155.000, 248.000, "LD_SPAC:white");
    TextDrawTextSize(House_TBG, 98.000, 25.000);
    TextDrawAlignment(House_TBG, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(House_TBG, 255);
    TextDrawSetShadow(House_TBG, 0);
    TextDrawSetOutline(House_TBG, 0);
    TextDrawBackgroundColour(House_TBG, 255);
    TextDrawFont(House_TBG, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(House_TBG, true);
    TextDrawSetSelectable(House_TBG, true);

    House_Text = TextDrawCreate(204.000, 250.000, "My Houses");
    TextDrawLetterSize(House_Text, 0.300, 2.098);
    TextDrawTextSize(House_Text, 32.000, 94.000);
    TextDrawAlignment(House_Text, TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(House_Text, -1);
    TextDrawSetShadow(House_Text, 1);
    TextDrawSetOutline(House_Text, 1);
    TextDrawBackgroundColour(House_Text, 150);
    TextDrawFont(House_Text, TEXT_DRAW_FONT_1);
    TextDrawSetProportional(House_Text, true);

    Vehicle_View = TextDrawCreate(256.000, 134.000, "_");
    TextDrawTextSize(Vehicle_View, 127.000, 124.000);
    TextDrawAlignment(Vehicle_View, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Vehicle_View, -1);
    TextDrawSetShadow(Vehicle_View, 0);
    TextDrawSetOutline(Vehicle_View, 0);
    TextDrawBackgroundColour(Vehicle_View, 1536);
    TextDrawFont(Vehicle_View, TEXT_DRAW_FONT_MODEL_PREVIEW);
    TextDrawSetProportional(Vehicle_View, false);
    TextDrawSetPreviewModel(Vehicle_View, 19134);
    TextDrawSetPreviewRot(Vehicle_View, -15.000, 0.000, 75.000, 0.898);
    TextDrawSetPreviewVehicleColours(Vehicle_View, 0, 0);

    Vehicle_TBG = TextDrawCreate(273.000, 248.000, "LD_SPAC:white");
    TextDrawTextSize(Vehicle_TBG, 98.000, 25.000);
    TextDrawAlignment(Vehicle_TBG, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Vehicle_TBG, 255);
    TextDrawSetShadow(Vehicle_TBG, 0);
    TextDrawSetOutline(Vehicle_TBG, 0);
    TextDrawBackgroundColour(Vehicle_TBG, 255);
    TextDrawFont(Vehicle_TBG, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(Vehicle_TBG, true);
    TextDrawSetSelectable(Vehicle_TBG, true);

    Vehicle_Text = TextDrawCreate(323.000, 250.000, "My Vehicles");
    TextDrawLetterSize(Vehicle_Text, 0.300, 2.098);
    TextDrawTextSize(Vehicle_Text, 32.000, 94.000);
    TextDrawAlignment(Vehicle_Text, TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(Vehicle_Text, -1);
    TextDrawSetShadow(Vehicle_Text, 1);
    TextDrawSetOutline(Vehicle_Text, 1);
    TextDrawBackgroundColour(Vehicle_Text, 150);
    TextDrawFont(Vehicle_Text, TEXT_DRAW_FONT_1);
    TextDrawSetProportional(Vehicle_Text, true);

    Jewellery_View = TextDrawCreate(363.000, 132.000, "_");
    TextDrawTextSize(Jewellery_View, 127.000, 124.000);
    TextDrawAlignment(Jewellery_View, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Jewellery_View, -1);
    TextDrawSetShadow(Jewellery_View, 0);
    TextDrawSetOutline(Jewellery_View, 0);
    TextDrawBackgroundColour(Jewellery_View, 1536);
    TextDrawFont(Jewellery_View, TEXT_DRAW_FONT_MODEL_PREVIEW);
    TextDrawSetProportional(Jewellery_View, false);
    TextDrawSetPreviewModel(Jewellery_View, 2710);
    TextDrawSetPreviewRot(Jewellery_View, -19.000, 0.000, 214.000, 0.898);
    TextDrawSetPreviewVehicleColours(Jewellery_View, 0, 0);

    Jewellery_TBG = TextDrawCreate(390.000, 248.000, "LD_SPAC:white");
    TextDrawTextSize(Jewellery_TBG, 98.000, 25.000);
    TextDrawAlignment(Jewellery_TBG, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Jewellery_TBG, 255);
    TextDrawSetShadow(Jewellery_TBG, 0);
    TextDrawSetOutline(Jewellery_TBG, 0);
    TextDrawBackgroundColour(Jewellery_TBG, 255);
    TextDrawFont(Jewellery_TBG, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(Jewellery_TBG, true);
    TextDrawSetSelectable(Jewellery_TBG, true);

    Jewellery_Text = TextDrawCreate(441.000, 250.000, "My Jewelleries");
    TextDrawLetterSize(Jewellery_Text, 0.300, 2.098);
    TextDrawTextSize(Jewellery_Text, 32.000, 94.000);
    TextDrawAlignment(Jewellery_Text, TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(Jewellery_Text, -1);
    TextDrawSetShadow(Jewellery_Text, 1);
    TextDrawSetOutline(Jewellery_Text, 1);
    TextDrawBackgroundColour(Jewellery_Text, 150);
    TextDrawFont(Jewellery_Text, TEXT_DRAW_FONT_1);
    TextDrawSetProportional(Jewellery_Text, true);

    Close_BTN = TextDrawCreate(273.000, 303.000, "LD_SPAC:white");
    TextDrawTextSize(Close_BTN, 98.000, 25.000);
    TextDrawAlignment(Close_BTN, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(Close_BTN, 255);
    TextDrawSetShadow(Close_BTN, 0);
    TextDrawSetOutline(Close_BTN, 0);
    TextDrawBackgroundColour(Close_BTN, 255);
    TextDrawFont(Close_BTN, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(Close_BTN, true);
    TextDrawSetSelectable(Close_BTN, true);

    Close_Text = TextDrawCreate(321.000, 305.000, "Close");
    TextDrawLetterSize(Close_Text, 0.300, 2.098);
    TextDrawTextSize(Close_Text, 32.000, 94.000);
    TextDrawAlignment(Close_Text, TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(Close_Text, -1);
    TextDrawSetShadow(Close_Text, 1);
    TextDrawSetOutline(Close_Text, 1);
    TextDrawBackgroundColour(Close_Text, 150);
    TextDrawFont(Close_Text, TEXT_DRAW_FONT_1);
    TextDrawSetProportional(Close_Text, true);

    Web_Url = TextDrawCreate(491.000, 328.000, "SunShine-City.co");
    TextDrawLetterSize(Web_Url, 0.300, 1.500);
    TextDrawAlignment(Web_Url, TEXT_DRAW_ALIGN_RIGHT);
    TextDrawColour(Web_Url, -1);
    TextDrawSetShadow(Web_Url, 1);
    TextDrawSetOutline(Web_Url, 1);
    TextDrawBackgroundColour(Web_Url, 150);
    TextDrawFont(Web_Url, TEXT_DRAW_FONT_1);
    TextDrawSetProportional(Web_Url, true);
}

CreateMyAssetsTDP(playerid)
{
    House_Count[playerid] = CreatePlayerTextDraw(playerid, 215.000, 181.000, "69");
    PlayerTextDrawLetterSize(playerid, House_Count[playerid], 0.538, 4.999);
    PlayerTextDrawTextSize(playerid, House_Count[playerid], 2.000, -3.000);
    PlayerTextDrawAlignment(playerid, House_Count[playerid], TEXT_DRAW_ALIGN_CENTER);
    PlayerTextDrawColour(playerid, House_Count[playerid], -1);
    PlayerTextDrawSetShadow(playerid, House_Count[playerid], 1);
    PlayerTextDrawSetOutline(playerid, House_Count[playerid], 1);
    PlayerTextDrawBackgroundColour(playerid, House_Count[playerid], 150);
    PlayerTextDrawFont(playerid, House_Count[playerid], TEXT_DRAW_FONT_2);
    PlayerTextDrawSetProportional(playerid, House_Count[playerid], true);

    Vehicle_Count[playerid] = CreatePlayerTextDraw(playerid, 319.000, 175.000, "69");
    PlayerTextDrawLetterSize(playerid, Vehicle_Count[playerid], 0.538, 4.999);
    PlayerTextDrawTextSize(playerid, Vehicle_Count[playerid], 2.000, -3.000);
    PlayerTextDrawAlignment(playerid, Vehicle_Count[playerid], TEXT_DRAW_ALIGN_CENTER);
    PlayerTextDrawColour(playerid, Vehicle_Count[playerid], -1);
    PlayerTextDrawSetShadow(playerid, Vehicle_Count[playerid], 1);
    PlayerTextDrawSetOutline(playerid, Vehicle_Count[playerid], 1);
    PlayerTextDrawBackgroundColour(playerid, Vehicle_Count[playerid], 150);
    PlayerTextDrawFont(playerid, Vehicle_Count[playerid], TEXT_DRAW_FONT_2);
    PlayerTextDrawSetProportional(playerid, Vehicle_Count[playerid], true);

}