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


// DealerShip TextDraw

new Text: DL_BACK[3];
new Text: DL_HEADER;
new Text: DL_BORDER[8];
new Text: DL_CLOSE;
new Text: DL_CLOSE_NAME;
new Text: DL_INFO;
new Text: DL_PREVIEW;
new Text: DL_COLOR_1;
new Text: DL_COLOR_2;
new Text: DL_CL2_1;
new Text: DL_CL2_2;
new Text: DL_CL2_3;
new Text: DL_CL2_4;
new Text: DL_CL2_5;
new Text: DL_CL2_6;
new Text: DL_CL1_1;
new Text: DL_CL1_2;
new Text: DL_CL1_3;
new Text: DL_CL1_4;
new Text: DL_CL1_5;
new Text: DL_CL1_6;
new Text: DL_CL1_7;
new Text: DL_CL1_8;
new Text: DL_CL1_9;
new Text: DL_CL1_10;
new Text: DL_CL1_11;
new Text: DL_CL1_12;
new Text: DL_CL2_7;
new Text: DL_CL2_8;
new Text: DL_CL2_9;
new Text: DL_CL2_10;
new Text: DL_CL2_11;
new Text: DL_CL2_12;
new Text: DL_PRICE;
new Text: DL_PRICE_B;
new Text: DL_NAME;
new Text: DL_NAME_B;
new Text: DL_SPEED;
new Text: SL_SPEED_B;
new Text: DL_SEATS;
new Text: DL_SEATS_B;
new Text: DL_BUY_BTN;
new Text: DL_BUY_T;
new Text: DL_WEB_URL;

CreateDealerShipTD()
{
    DL_BACK[0] = TextDrawCreate(144.000, 124.000, "LD_SPAC:white");
    TextDrawTextSize(DL_BACK[0], 90.000, 229.000);
    TextDrawAlignment(DL_BACK[0], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BACK[0], 1182971135);
    TextDrawSetShadow(DL_BACK[0], 0);
    TextDrawSetOutline(DL_BACK[0], 0);
    TextDrawBackgroundColour(DL_BACK[0], 255);
    TextDrawFont(DL_BACK[0], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_BACK[0], true);

    DL_BACK[1] = TextDrawCreate(236.000, 124.000, "LD_SPAC:white");
    TextDrawTextSize(DL_BACK[1], 250.000, 158.000);
    TextDrawAlignment(DL_BACK[1], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BACK[1], 1687547391);
    TextDrawSetShadow(DL_BACK[1], 0);
    TextDrawSetOutline(DL_BACK[1], 0);
    TextDrawBackgroundColour(DL_BACK[1], 255);
    TextDrawFont(DL_BACK[1], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_BACK[1], true);

    DL_BACK[2] = TextDrawCreate(236.000, 285.000, "LD_SPAC:white");
    TextDrawTextSize(DL_BACK[2], 250.000, 67.000);
    TextDrawAlignment(DL_BACK[2], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BACK[2], 1769912572);
    TextDrawSetShadow(DL_BACK[2], 0);
    TextDrawSetOutline(DL_BACK[2], 0);
    TextDrawBackgroundColour(DL_BACK[2], 255);
    TextDrawFont(DL_BACK[2], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_BACK[2], true);

    DL_HEADER = TextDrawCreate(143.000, 98.000, "LD_SPAC:white");
    TextDrawTextSize(DL_HEADER, 346.000, 26.000);
    TextDrawAlignment(DL_HEADER, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_HEADER, 255);
    TextDrawSetShadow(DL_HEADER, 0);
    TextDrawSetOutline(DL_HEADER, 0);
    TextDrawBackgroundColour(DL_HEADER, 255);
    TextDrawFont(DL_HEADER, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_HEADER, true);

    DL_BORDER[0] = TextDrawCreate(143.000, 124.000, "LD_SPAC:white");
    TextDrawTextSize(DL_BORDER[0], 3.000, 233.000);
    TextDrawAlignment(DL_BORDER[0], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BORDER[0], 255);
    TextDrawSetShadow(DL_BORDER[0], 0);
    TextDrawSetOutline(DL_BORDER[0], 0);
    TextDrawBackgroundColour(DL_BORDER[0], 255);
    TextDrawFont(DL_BORDER[0], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_BORDER[0], true);

    DL_BORDER[1] = TextDrawCreate(233.000, 124.000, "LD_SPAC:white");
    TextDrawTextSize(DL_BORDER[1], 3.000, 233.000);
    TextDrawAlignment(DL_BORDER[1], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BORDER[1], 255);
    TextDrawSetShadow(DL_BORDER[1], 0);
    TextDrawSetOutline(DL_BORDER[1], 0);
    TextDrawBackgroundColour(DL_BORDER[1], 255);
    TextDrawFont(DL_BORDER[1], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_BORDER[1], true);

    DL_BORDER[2] = TextDrawCreate(145.000, 352.000, "LD_SPAC:white");
    TextDrawTextSize(DL_BORDER[2], 343.000, 5.000);
    TextDrawAlignment(DL_BORDER[2], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BORDER[2], 255);
    TextDrawSetShadow(DL_BORDER[2], 0);
    TextDrawSetOutline(DL_BORDER[2], 0);
    TextDrawBackgroundColour(DL_BORDER[2], 255);
    TextDrawFont(DL_BORDER[2], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_BORDER[2], true);

    DL_BORDER[3] = TextDrawCreate(145.000, 140.000, "LD_SPAC:white");
    TextDrawTextSize(DL_BORDER[3], 343.000, 3.000);
    TextDrawAlignment(DL_BORDER[3], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BORDER[3], 255);
    TextDrawSetShadow(DL_BORDER[3], 0);
    TextDrawSetOutline(DL_BORDER[3], 0);
    TextDrawBackgroundColour(DL_BORDER[3], 255);
    TextDrawFont(DL_BORDER[3], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_BORDER[3], true);

    DL_BORDER[4] = TextDrawCreate(486.000, 124.000, "LD_SPAC:white");
    TextDrawTextSize(DL_BORDER[4], 3.000, 233.000);
    TextDrawAlignment(DL_BORDER[4], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BORDER[4], 255);
    TextDrawSetShadow(DL_BORDER[4], 0);
    TextDrawSetOutline(DL_BORDER[4], 0);
    TextDrawBackgroundColour(DL_BORDER[4], 255);
    TextDrawFont(DL_BORDER[4], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_BORDER[4], true);

    DL_BORDER[5] = TextDrawCreate(233.000, 282.000, "LD_SPAC:white");
    TextDrawTextSize(DL_BORDER[5], 256.000, 3.000);
    TextDrawAlignment(DL_BORDER[5], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BORDER[5], 255);
    TextDrawSetShadow(DL_BORDER[5], 0);
    TextDrawSetOutline(DL_BORDER[5], 0);
    TextDrawBackgroundColour(DL_BORDER[5], 255);
    TextDrawFont(DL_BORDER[5], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_BORDER[5], true);

    DL_BORDER[6] = TextDrawCreate(233.000, 302.000, "LD_SPAC:white");
    TextDrawTextSize(DL_BORDER[6], 256.000, 3.000);
    TextDrawAlignment(DL_BORDER[6], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BORDER[6], 255);
    TextDrawSetShadow(DL_BORDER[6], 0);
    TextDrawSetOutline(DL_BORDER[6], 0);
    TextDrawBackgroundColour(DL_BORDER[6], 255);
    TextDrawFont(DL_BORDER[6], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_BORDER[6], true);

    DL_BORDER[7] = TextDrawCreate(361.000, 284.000, "LD_SPAC:white");
    TextDrawTextSize(DL_BORDER[7], 3.000, 73.000);
    TextDrawAlignment(DL_BORDER[7], TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BORDER[7], 255);
    TextDrawSetShadow(DL_BORDER[7], 0);
    TextDrawSetOutline(DL_BORDER[7], 0);
    TextDrawBackgroundColour(DL_BORDER[7], 255);
    TextDrawFont(DL_BORDER[7], TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_BORDER[7], true);

    DL_CLOSE = TextDrawCreate(465.000, 99.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CLOSE, 20.000, 23.000);
    TextDrawAlignment(DL_CLOSE, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CLOSE, -16776961);
    TextDrawSetShadow(DL_CLOSE, 0);
    TextDrawSetOutline(DL_CLOSE, 0);
    TextDrawBackgroundColour(DL_CLOSE, 255);
    TextDrawFont(DL_CLOSE, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CLOSE, true);
    TextDrawSetSelectable(DL_CLOSE, true);

    DL_CLOSE_NAME = TextDrawCreate(472.000, 103.000, "X");
    TextDrawLetterSize(DL_CLOSE_NAME, 0.259, 1.399);
    TextDrawAlignment(DL_CLOSE_NAME, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CLOSE_NAME, -1);
    TextDrawSetShadow(DL_CLOSE_NAME, 0);
    TextDrawSetOutline(DL_CLOSE_NAME, 0);
    TextDrawBackgroundColour(DL_CLOSE_NAME, 150);
    TextDrawFont(DL_CLOSE_NAME, TEXT_DRAW_FONT_2);
    TextDrawSetProportional(DL_CLOSE_NAME, true);

    DL_INFO = TextDrawCreate(189.000, 124.000, "Information");
    TextDrawLetterSize(DL_INFO, 0.300, 1.500);
    TextDrawTextSize(DL_INFO, 0.000, 84.000);
    TextDrawAlignment(DL_INFO, TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(DL_INFO, -1);
    TextDrawSetShadow(DL_INFO, 1);
    TextDrawSetOutline(DL_INFO, 1);
    TextDrawBackgroundColour(DL_INFO, 150);
    TextDrawFont(DL_INFO, TEXT_DRAW_FONT_2);
    TextDrawSetProportional(DL_INFO, true);

    DL_PREVIEW = TextDrawCreate(361.000, 125.000, "PREVIEW");
    TextDrawLetterSize(DL_PREVIEW, 0.300, 1.500);
    TextDrawTextSize(DL_PREVIEW, 0.000, 84.000);
    TextDrawAlignment(DL_PREVIEW, TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(DL_PREVIEW, -1);
    TextDrawSetShadow(DL_PREVIEW, 1);
    TextDrawSetOutline(DL_PREVIEW, 1);
    TextDrawBackgroundColour(DL_PREVIEW, 150);
    TextDrawFont(DL_PREVIEW, TEXT_DRAW_FONT_2);
    TextDrawSetProportional(DL_PREVIEW, true);

    DL_COLOR_1 = TextDrawCreate(296.000, 285.000, "COLOR_1");
    TextDrawLetterSize(DL_COLOR_1, 0.300, 1.500);
    TextDrawTextSize(DL_COLOR_1, 0.000, 84.000);
    TextDrawAlignment(DL_COLOR_1, TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(DL_COLOR_1, -1);
    TextDrawSetShadow(DL_COLOR_1, 1);
    TextDrawSetOutline(DL_COLOR_1, 1);
    TextDrawBackgroundColour(DL_COLOR_1, 150);
    TextDrawFont(DL_COLOR_1, TEXT_DRAW_FONT_2);
    TextDrawSetProportional(DL_COLOR_1, true);

    DL_COLOR_2 = TextDrawCreate(423.000, 285.000, "COLOR_2");
    TextDrawLetterSize(DL_COLOR_2, 0.300, 1.500);
    TextDrawTextSize(DL_COLOR_2, 0.000, 84.000);
    TextDrawAlignment(DL_COLOR_2, TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(DL_COLOR_2, -1);
    TextDrawSetShadow(DL_COLOR_2, 1);
    TextDrawSetOutline(DL_COLOR_2, 1);
    TextDrawBackgroundColour(DL_COLOR_2, 150);
    TextDrawFont(DL_COLOR_2, TEXT_DRAW_FONT_2);
    TextDrawSetProportional(DL_COLOR_2, true);

    DL_CL2_1 = TextDrawCreate(364.000, 305.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL2_1, 22.000, 24.000);
    TextDrawAlignment(DL_CL2_1, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL2_1, -2080108289);
    TextDrawSetShadow(DL_CL2_1, 0);
    TextDrawSetOutline(DL_CL2_1, 0);
    TextDrawBackgroundColour(DL_CL2_1, 255);
    TextDrawFont(DL_CL2_1, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL2_1, true);
    TextDrawSetSelectable(DL_CL2_1, true);

    DL_CL2_2 = TextDrawCreate(384.000, 305.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL2_2, 22.000, 24.000);
    TextDrawAlignment(DL_CL2_2, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL2_2, -678555393);
    TextDrawSetShadow(DL_CL2_2, 0);
    TextDrawSetOutline(DL_CL2_2, 0);
    TextDrawBackgroundColour(DL_CL2_2, 255);
    TextDrawFont(DL_CL2_2, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL2_2, true);
    TextDrawSetSelectable(DL_CL2_2, true);

    DL_CL2_3 = TextDrawCreate(404.000, 305.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL2_3, 22.000, 24.000);
    TextDrawAlignment(DL_CL2_3, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL2_3, 255);
    TextDrawSetShadow(DL_CL2_3, 0);
    TextDrawSetOutline(DL_CL2_3, 0);
    TextDrawBackgroundColour(DL_CL2_3, 255);
    TextDrawFont(DL_CL2_3, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL2_3, true);
    TextDrawSetSelectable(DL_CL2_3, true);

    DL_CL2_4 = TextDrawCreate(424.000, 305.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL2_4, 22.000, 24.000);
    TextDrawAlignment(DL_CL2_4, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL2_4, -168430081);
    TextDrawSetShadow(DL_CL2_4, 0);
    TextDrawSetOutline(DL_CL2_4, 0);
    TextDrawBackgroundColour(DL_CL2_4, 255);
    TextDrawFont(DL_CL2_4, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL2_4, true);
    TextDrawSetSelectable(DL_CL2_4, true);

    DL_CL2_5 = TextDrawCreate(444.000, 305.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL2_5, 22.000, 24.000);
    TextDrawAlignment(DL_CL2_5, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL2_5, 393549823);
    TextDrawSetShadow(DL_CL2_5, 0);
    TextDrawSetOutline(DL_CL2_5, 0);
    TextDrawBackgroundColour(DL_CL2_5, 255);
    TextDrawFont(DL_CL2_5, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL2_5, true);
    TextDrawSetSelectable(DL_CL2_5, true);

    DL_CL2_6 = TextDrawCreate(465.000, 305.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL2_6, 22.000, 24.000);
    TextDrawAlignment(DL_CL2_6, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL2_6, 747219711);
    TextDrawSetShadow(DL_CL2_6, 0);
    TextDrawSetOutline(DL_CL2_6, 0);
    TextDrawBackgroundColour(DL_CL2_6, 255);
    TextDrawFont(DL_CL2_6, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL2_6, true);
    TextDrawSetSelectable(DL_CL2_6, true);

    DL_CL1_1 = TextDrawCreate(236.000, 305.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL1_1, 22.000, 24.000);
    TextDrawAlignment(DL_CL1_1, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL1_1, -2080108289);
    TextDrawSetShadow(DL_CL1_1, 0);
    TextDrawSetOutline(DL_CL1_1, 0);
    TextDrawBackgroundColour(DL_CL1_1, 255);
    TextDrawFont(DL_CL1_1, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL1_1, true);
    TextDrawSetSelectable(DL_CL1_1, true);

    DL_CL1_2 = TextDrawCreate(256.000, 305.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL1_2, 22.000, 24.000);
    TextDrawAlignment(DL_CL1_2, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL1_2, -678555393);
    TextDrawSetShadow(DL_CL1_2, 0);
    TextDrawSetOutline(DL_CL1_2, 0);
    TextDrawBackgroundColour(DL_CL1_2, 255);
    TextDrawFont(DL_CL1_2, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL1_2, true);
    TextDrawSetSelectable(DL_CL1_2, true);

    DL_CL1_3 = TextDrawCreate(276.000, 305.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL1_3, 22.000, 24.000);
    TextDrawAlignment(DL_CL1_3, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL1_3, 255);
    TextDrawSetShadow(DL_CL1_3, 0);
    TextDrawSetOutline(DL_CL1_3, 0);
    TextDrawBackgroundColour(DL_CL1_3, 255);
    TextDrawFont(DL_CL1_3, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL1_3, true);
    TextDrawSetSelectable(DL_CL1_3, true);

    DL_CL1_4 = TextDrawCreate(296.000, 305.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL1_4, 22.000, 24.000);
    TextDrawAlignment(DL_CL1_4, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL1_4, -168430081);
    TextDrawSetShadow(DL_CL1_4, 0);
    TextDrawSetOutline(DL_CL1_4, 0);
    TextDrawBackgroundColour(DL_CL1_4, 255);
    TextDrawFont(DL_CL1_4, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL1_4, true);
    TextDrawSetSelectable(DL_CL1_4, true);

    DL_CL1_5 = TextDrawCreate(316.000, 305.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL1_5, 22.000, 24.000);
    TextDrawAlignment(DL_CL1_5, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL1_5, 393549823);
    TextDrawSetShadow(DL_CL1_5, 0);
    TextDrawSetOutline(DL_CL1_5, 0);
    TextDrawBackgroundColour(DL_CL1_5, 255);
    TextDrawFont(DL_CL1_5, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL1_5, true);
    TextDrawSetSelectable(DL_CL1_5, true);

    DL_CL1_6 = TextDrawCreate(337.000, 305.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL1_6, 22.000, 24.000);
    TextDrawAlignment(DL_CL1_6, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL1_6, 747219711);
    TextDrawSetShadow(DL_CL1_6, 0);
    TextDrawSetOutline(DL_CL1_6, 0);
    TextDrawBackgroundColour(DL_CL1_6, 255);
    TextDrawFont(DL_CL1_6, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL1_6, true);
    TextDrawSetSelectable(DL_CL1_6, true);

    DL_CL1_7 = TextDrawCreate(236.000, 327.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL1_7, 22.000, 24.000);
    TextDrawAlignment(DL_CL1_7, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL1_7, -1974616577);
    TextDrawSetShadow(DL_CL1_7, 0);
    TextDrawSetOutline(DL_CL1_7, 0);
    TextDrawBackgroundColour(DL_CL1_7, 255);
    TextDrawFont(DL_CL1_7, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL1_7, true);
    TextDrawSetSelectable(DL_CL1_7, true);

    DL_CL1_8 = TextDrawCreate(256.000, 327.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL1_8, 22.000, 24.000);
    TextDrawAlignment(DL_CL1_8, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL1_8, -1212696577);
    TextDrawSetShadow(DL_CL1_8, 0);
    TextDrawSetOutline(DL_CL1_8, 0);
    TextDrawBackgroundColour(DL_CL1_8, 255);
    TextDrawFont(DL_CL1_8, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL1_8, true);
    TextDrawSetSelectable(DL_CL1_8, true);

    DL_CL1_9 = TextDrawCreate(276.000, 327.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL1_9, 22.000, 24.000);
    TextDrawAlignment(DL_CL1_9, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL1_9, 1930304255);
    TextDrawSetShadow(DL_CL1_9, 0);
    TextDrawSetOutline(DL_CL1_9, 0);
    TextDrawBackgroundColour(DL_CL1_9, 255);
    TextDrawFont(DL_CL1_9, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL1_9, true);
    TextDrawSetSelectable(DL_CL1_9, true);

    DL_CL1_10 = TextDrawCreate(296.000, 327.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL1_10, 22.000, 24.000);
    TextDrawAlignment(DL_CL1_10, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL1_10, -328552705);
    TextDrawSetShadow(DL_CL1_10, 0);
    TextDrawSetOutline(DL_CL1_10, 0);
    TextDrawBackgroundColour(DL_CL1_10, 255);
    TextDrawFont(DL_CL1_10, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL1_10, true);
    TextDrawSetSelectable(DL_CL1_10, true);

    DL_CL1_11 = TextDrawCreate(316.000, 327.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL1_11, 22.000, 24.000);
    TextDrawAlignment(DL_CL1_11, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL1_11, 1532845823);
    TextDrawSetShadow(DL_CL1_11, 0);
    TextDrawSetOutline(DL_CL1_11, 0);
    TextDrawBackgroundColour(DL_CL1_11, 255);
    TextDrawFont(DL_CL1_11, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL1_11, true);
    TextDrawSetSelectable(DL_CL1_11, true);

    DL_CL1_12 = TextDrawCreate(337.000, 327.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL1_12, 22.000, 24.000);
    TextDrawAlignment(DL_CL1_12, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL1_12, -1718018305);
    TextDrawSetShadow(DL_CL1_12, 0);
    TextDrawSetOutline(DL_CL1_12, 0);
    TextDrawBackgroundColour(DL_CL1_12, 255);
    TextDrawFont(DL_CL1_12, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL1_12, true);
    TextDrawSetSelectable(DL_CL1_12, true);

    DL_CL2_7 = TextDrawCreate(364.000, 327.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL2_7, 22.000, 24.000);
    TextDrawAlignment(DL_CL2_7, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL2_7, -1974616577);
    TextDrawSetShadow(DL_CL2_7, 0);
    TextDrawSetOutline(DL_CL2_7, 0);
    TextDrawBackgroundColour(DL_CL2_7, 255);
    TextDrawFont(DL_CL2_7, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL2_7, true);
    TextDrawSetSelectable(DL_CL2_7, true);

    DL_CL2_8 = TextDrawCreate(384.000, 327.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL2_8, 22.000, 24.000);
    TextDrawAlignment(DL_CL2_8, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL2_8, -1212696577);
    TextDrawSetShadow(DL_CL2_8, 0);
    TextDrawSetOutline(DL_CL2_8, 0);
    TextDrawBackgroundColour(DL_CL2_8, 255);
    TextDrawFont(DL_CL2_8, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL2_8, true);
    TextDrawSetSelectable(DL_CL2_8, true);

    DL_CL2_9 = TextDrawCreate(404.000, 327.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL2_9, 22.000, 24.000);
    TextDrawAlignment(DL_CL2_9, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL2_9, 1930304255);
    TextDrawSetShadow(DL_CL2_9, 0);
    TextDrawSetOutline(DL_CL2_9, 0);
    TextDrawBackgroundColour(DL_CL2_9, 255);
    TextDrawFont(DL_CL2_9, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL2_9, true);
    TextDrawSetSelectable(DL_CL2_9, true);

    DL_CL2_10 = TextDrawCreate(424.000, 327.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL2_10, 22.000, 24.000);
    TextDrawAlignment(DL_CL2_10, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL2_10, -328552705);
    TextDrawSetShadow(DL_CL2_10, 0);
    TextDrawSetOutline(DL_CL2_10, 0);
    TextDrawBackgroundColour(DL_CL2_10, 255);
    TextDrawFont(DL_CL2_10, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL2_10, true);
    TextDrawSetSelectable(DL_CL2_10, true);

    DL_CL2_11 = TextDrawCreate(444.000, 327.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL2_11, 22.000, 24.000);
    TextDrawAlignment(DL_CL2_11, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL2_11, 1532845823);
    TextDrawSetShadow(DL_CL2_11, 0);
    TextDrawSetOutline(DL_CL2_11, 0);
    TextDrawBackgroundColour(DL_CL2_11, 255);
    TextDrawFont(DL_CL2_11, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL2_11, true);
    TextDrawSetSelectable(DL_CL2_11, true);

    DL_CL2_12 = TextDrawCreate(465.000, 327.000, "LD_BEAT:chit");
    TextDrawTextSize(DL_CL2_12, 22.000, 24.000);
    TextDrawAlignment(DL_CL2_12, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_CL2_12, -1718018305);
    TextDrawSetShadow(DL_CL2_12, 0);
    TextDrawSetOutline(DL_CL2_12, 0);
    TextDrawBackgroundColour(DL_CL2_12, 255);
    TextDrawFont(DL_CL2_12, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_CL2_12, true);
    TextDrawSetSelectable(DL_CL2_12, true);

    DL_PRICE = TextDrawCreate(170.000, 253.000, "PRICE:");
    TextDrawLetterSize(DL_PRICE, 0.300, 1.500);
    TextDrawAlignment(DL_PRICE, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_PRICE, -1);
    TextDrawSetShadow(DL_PRICE, 1);
    TextDrawSetOutline(DL_PRICE, 1);
    TextDrawBackgroundColour(DL_PRICE, 150);
    TextDrawFont(DL_PRICE, TEXT_DRAW_FONT_2);
    TextDrawSetProportional(DL_PRICE, true);

    DL_PRICE_B = TextDrawCreate(148.000, 269.000, "LD_SPAC:white");
    TextDrawTextSize(DL_PRICE_B, 83.000, 19.000);
    TextDrawAlignment(DL_PRICE_B, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_PRICE_B, 255);
    TextDrawSetShadow(DL_PRICE_B, 0);
    TextDrawSetOutline(DL_PRICE_B, 0);
    TextDrawBackgroundColour(DL_PRICE_B, 255);
    TextDrawFont(DL_PRICE_B, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_PRICE_B, true);

    DL_NAME = TextDrawCreate(170.000, 142.000, "NAME:");
    TextDrawLetterSize(DL_NAME, 0.300, 1.500);
    TextDrawAlignment(DL_NAME, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_NAME, -1);
    TextDrawSetShadow(DL_NAME, 1);
    TextDrawSetOutline(DL_NAME, 1);
    TextDrawBackgroundColour(DL_NAME, 150);
    TextDrawFont(DL_NAME, TEXT_DRAW_FONT_2);
    TextDrawSetProportional(DL_NAME, true);

    DL_NAME_B = TextDrawCreate(148.000, 158.000, "LD_SPAC:white");
    TextDrawTextSize(DL_NAME_B, 83.000, 19.000);
    TextDrawAlignment(DL_NAME_B, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_NAME_B, 255);
    TextDrawSetShadow(DL_NAME_B, 0);
    TextDrawSetOutline(DL_NAME_B, 0);
    TextDrawBackgroundColour(DL_NAME_B, 255);
    TextDrawFont(DL_NAME_B, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_NAME_B, true);

    DL_SPEED = TextDrawCreate(191.000, 179.000, "MAX_SPEED:");
    TextDrawLetterSize(DL_SPEED, 0.300, 1.500);
    TextDrawAlignment(DL_SPEED, TEXT_DRAW_ALIGN_CENTER);
    TextDrawColour(DL_SPEED, -1);
    TextDrawSetShadow(DL_SPEED, 1);
    TextDrawSetOutline(DL_SPEED, 1);
    TextDrawBackgroundColour(DL_SPEED, 150);
    TextDrawFont(DL_SPEED, TEXT_DRAW_FONT_2);
    TextDrawSetProportional(DL_SPEED, true);

    SL_SPEED_B = TextDrawCreate(148.000, 195.000, "LD_SPAC:white");
    TextDrawTextSize(SL_SPEED_B, 83.000, 19.000);
    TextDrawAlignment(SL_SPEED_B, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(SL_SPEED_B, 255);
    TextDrawSetShadow(SL_SPEED_B, 0);
    TextDrawSetOutline(SL_SPEED_B, 0);
    TextDrawBackgroundColour(SL_SPEED_B, 255);
    TextDrawFont(SL_SPEED_B, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(SL_SPEED_B, true);

    DL_SEATS = TextDrawCreate(168.000, 216.000, "SEATS:");
    TextDrawLetterSize(DL_SEATS, 0.300, 1.500);
    TextDrawAlignment(DL_SEATS, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_SEATS, -1);
    TextDrawSetShadow(DL_SEATS, 1);
    TextDrawSetOutline(DL_SEATS, 1);
    TextDrawBackgroundColour(DL_SEATS, 150);
    TextDrawFont(DL_SEATS, TEXT_DRAW_FONT_2);
    TextDrawSetProportional(DL_SEATS, true);

    DL_SEATS_B = TextDrawCreate(148.000, 232.000, "LD_SPAC:white");
    TextDrawTextSize(DL_SEATS_B, 83.000, 19.000);
    TextDrawAlignment(DL_SEATS_B, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_SEATS_B, 255);
    TextDrawSetShadow(DL_SEATS_B, 0);
    TextDrawSetOutline(DL_SEATS_B, 0);
    TextDrawBackgroundColour(DL_SEATS_B, 255);
    TextDrawFont(DL_SEATS_B, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_SEATS_B, true);

    DL_BUY_BTN = TextDrawCreate(148.000, 302.000, "LD_SPAC:white");
    TextDrawTextSize(DL_BUY_BTN, 83.000, 36.000);
    TextDrawAlignment(DL_BUY_BTN, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BUY_BTN, 255);
    TextDrawSetShadow(DL_BUY_BTN, 0);
    TextDrawSetOutline(DL_BUY_BTN, 0);
    TextDrawBackgroundColour(DL_BUY_BTN, 255);
    TextDrawFont(DL_BUY_BTN, TEXT_DRAW_FONT_SPRITE_DRAW);
    TextDrawSetProportional(DL_BUY_BTN, true);
    TextDrawSetSelectable(DL_BUY_BTN, true);

    DL_BUY_T = TextDrawCreate(165.000, 299.000, "BUY");
    TextDrawLetterSize(DL_BUY_T, 0.629, 3.999);
    TextDrawAlignment(DL_BUY_T, TEXT_DRAW_ALIGN_LEFT);
    TextDrawColour(DL_BUY_T, -65281);
    TextDrawSetShadow(DL_BUY_T, 1);
    TextDrawSetOutline(DL_BUY_T, 1);
    TextDrawBackgroundColour(DL_BUY_T, 150);
    TextDrawFont(DL_BUY_T, TEXT_DRAW_FONT_2);
    TextDrawSetProportional(DL_BUY_T, true);

    DL_WEB_URL = TextDrawCreate(232.000, 341.000, "SunShine.co");
    TextDrawLetterSize(DL_WEB_URL, 0.280, 1.199);
    TextDrawAlignment(DL_WEB_URL, TEXT_DRAW_ALIGN_RIGHT);
    TextDrawColour(DL_WEB_URL, -65281);
    TextDrawSetShadow(DL_WEB_URL, 1);
    TextDrawSetOutline(DL_WEB_URL, 1);
    TextDrawBackgroundColour(DL_WEB_URL, 150);
    TextDrawFont(DL_WEB_URL, TEXT_DRAW_FONT_1);
    TextDrawSetProportional(DL_WEB_URL, true);
}


new PlayerText: DL_VEH_PERVIEW[MAX_PLAYERS];
new PlayerText: DEAL_NAME[MAX_PLAYERS];
new PlayerText: DL_PRICE_T[MAX_PLAYERS];
new PlayerText: DL_NAME_T[MAX_PLAYERS];
new PlayerText: DL_SPEED_T[MAX_PLAYERS];
new PlayerText: DL_SEATS_T[MAX_PLAYERS];

CreatePlayerDealerShipTD(playerid)
{

    DL_VEH_PERVIEW[playerid] = CreatePlayerTextDraw(playerid, 236.000, 142.000, "_");
    PlayerTextDrawTextSize(playerid, DL_VEH_PERVIEW[playerid], 250.000, 140.000);
    PlayerTextDrawAlignment(playerid, DL_VEH_PERVIEW[playerid], TEXT_DRAW_ALIGN_LEFT);
    PlayerTextDrawColour(playerid, DL_VEH_PERVIEW[playerid], -1);
    PlayerTextDrawSetShadow(playerid, DL_VEH_PERVIEW[playerid], 0);
    PlayerTextDrawSetOutline(playerid, DL_VEH_PERVIEW[playerid], 0);
    PlayerTextDrawBackgroundColour(playerid, DL_VEH_PERVIEW[playerid], 85);
    PlayerTextDrawFont(playerid, DL_VEH_PERVIEW[playerid], TEXT_DRAW_FONT_MODEL_PREVIEW);
    PlayerTextDrawSetProportional(playerid, DL_VEH_PERVIEW[playerid], false);
    PlayerTextDrawSetPreviewModel(playerid, DL_VEH_PERVIEW[playerid], 541);
    PlayerTextDrawSetPreviewRot(playerid, DL_VEH_PERVIEW[playerid], -35.000, 0.000, -41.000, 1.000);
    PlayerTextDrawSetPreviewVehicleColours(playerid, DL_VEH_PERVIEW[playerid], 0, 1);

    DEAL_NAME[playerid] = CreatePlayerTextDraw(playerid, 149.000, 103.000, "OceanDock Dealership");
    PlayerTextDrawLetterSize(playerid, DEAL_NAME[playerid], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, DEAL_NAME[playerid], TEXT_DRAW_ALIGN_LEFT);
    PlayerTextDrawColour(playerid, DEAL_NAME[playerid], -65281);
    PlayerTextDrawSetShadow(playerid, DEAL_NAME[playerid], 1);
    PlayerTextDrawSetOutline(playerid, DEAL_NAME[playerid], 1);
    PlayerTextDrawBackgroundColour(playerid, DEAL_NAME[playerid], 150);
    PlayerTextDrawFont(playerid, DEAL_NAME[playerid], TEXT_DRAW_FONT_1);
    PlayerTextDrawSetProportional(playerid, DEAL_NAME[playerid], true);

    DL_PRICE_T[playerid] = CreatePlayerTextDraw(playerid, 190.000, 271.000, "20000000$");
    PlayerTextDrawLetterSize(playerid, DL_PRICE_T[playerid], 0.259, 1.500);
    PlayerTextDrawAlignment(playerid, DL_PRICE_T[playerid], TEXT_DRAW_ALIGN_CENTER);
    PlayerTextDrawColour(playerid, DL_PRICE_T[playerid], -65281);
    PlayerTextDrawSetShadow(playerid, DL_PRICE_T[playerid], 1);
    PlayerTextDrawSetOutline(playerid, DL_PRICE_T[playerid], 1);
    PlayerTextDrawBackgroundColour(playerid, DL_PRICE_T[playerid], 150);
    PlayerTextDrawFont(playerid, DL_PRICE_T[playerid], TEXT_DRAW_FONT_2);
    PlayerTextDrawSetProportional(playerid, DL_PRICE_T[playerid], true);

    DL_NAME_T[playerid] = CreatePlayerTextDraw(playerid, 190.000, 160.000, "Ambulance");
    PlayerTextDrawLetterSize(playerid, DL_NAME_T[playerid], 0.259, 1.500);
    PlayerTextDrawAlignment(playerid, DL_NAME_T[playerid], TEXT_DRAW_ALIGN_CENTER);
    PlayerTextDrawColour(playerid, DL_NAME_T[playerid], -65281);
    PlayerTextDrawSetShadow(playerid, DL_NAME_T[playerid], 1);
    PlayerTextDrawSetOutline(playerid, DL_NAME_T[playerid], 1);
    PlayerTextDrawBackgroundColour(playerid, DL_NAME_T[playerid], 150);
    PlayerTextDrawFont(playerid, DL_NAME_T[playerid], TEXT_DRAW_FONT_2);
    PlayerTextDrawSetProportional(playerid, DL_NAME_T[playerid], true);

    DL_SPEED_T[playerid] = CreatePlayerTextDraw(playerid, 190.000, 197.000, "220 KM/H");
    PlayerTextDrawLetterSize(playerid, DL_SPEED_T[playerid], 0.259, 1.500);
    PlayerTextDrawAlignment(playerid, DL_SPEED_T[playerid], TEXT_DRAW_ALIGN_CENTER);
    PlayerTextDrawColour(playerid, DL_SPEED_T[playerid], -65281);
    PlayerTextDrawSetShadow(playerid, DL_SPEED_T[playerid], 1);
    PlayerTextDrawSetOutline(playerid, DL_SPEED_T[playerid], 1);
    PlayerTextDrawBackgroundColour(playerid, DL_SPEED_T[playerid], 150);
    PlayerTextDrawFont(playerid, DL_SPEED_T[playerid], TEXT_DRAW_FONT_2);
    PlayerTextDrawSetProportional(playerid, DL_SPEED_T[playerid], true);

    DL_SEATS_T[playerid] = CreatePlayerTextDraw(playerid, 190.000, 234.000, "Four");
    PlayerTextDrawLetterSize(playerid, DL_SEATS_T[playerid], 0.259, 1.500);
    PlayerTextDrawAlignment(playerid, DL_SEATS_T[playerid], TEXT_DRAW_ALIGN_CENTER);
    PlayerTextDrawColour(playerid, DL_SEATS_T[playerid], -65281);
    PlayerTextDrawSetShadow(playerid, DL_SEATS_T[playerid], 1);
    PlayerTextDrawSetOutline(playerid, DL_SEATS_T[playerid], 1);
    PlayerTextDrawBackgroundColour(playerid, DL_SEATS_T[playerid], 150);
    PlayerTextDrawFont(playerid, DL_SEATS_T[playerid], TEXT_DRAW_FONT_2);
    PlayerTextDrawSetProportional(playerid, DL_SEATS_T[playerid], true);
}