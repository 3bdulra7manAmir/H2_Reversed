// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    if ( level.script == "boneyard" )
	{
		self.team = "allies";	
	}
	else
	{
		self.team = "axis";
	}
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 200;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    switch( codescripts\character::get_random_weapon(12) )
    {
        case 0:
            self.weapon = "masada_digital";
            break;
        case 1:
            self.weapon = "masada_acog";
            break;
        case 2:
            self.weapon = "masada_reflex";
            break;
        case 3:
            self.weapon = "scar_h";
            break;
        case 4:
            self.weapon = "scar_h_acog";
            break;
        case 5:
            self.weapon = "scar_h_grenadier";
            break;
        case 6:
            self.weapon = "scar_h_reflex";
            break;
        case 7:
            self.weapon = "scar_h_shotgun";
            break;
        case 8:
            self.weapon = "scar_h_thermal";
            break;
        case 9:
            self.weapon = "masada_digital_eotech";
            break;
        case 10:
            self.weapon = "masada_digital_acog";
            break;
        case 11:
            self.weapon = "masada_digital_reflex";
            break;
    }

    if( level.script == "estate")
    {
        character\character_spetsnaz_assault_rnd::main();
    }
	else
	{
	    character\character_shadow_co_assault::main();
	}
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
	character\character_spetsnaz_assault_rnd::precache();
    character\character_shadow_co_assault::precache();
    precacheitem( "masada_digital" );
    precacheitem( "masada_acog" );
    precacheitem( "masada_reflex" );
    precacheitem( "scar_h" );
    precacheitem( "scar_h_acog" );
    precacheitem( "scar_h_grenadier" );
    precacheitem( "scar_h_m203" );
    precacheitem( "scar_h_reflex" );
    precacheitem( "scar_h_shotgun" );
    precacheitem( "scar_h_shotgun_attach" );
    precacheitem( "scar_h_thermal" );
    precacheitem( "masada_digital_eotech" );
    precacheitem( "masada_digital_acog" );
    precacheitem( "masada_digital_reflex" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
