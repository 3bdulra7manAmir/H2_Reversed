// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "allies";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 100;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch( codescripts\character::get_random_weapon(12) )
    {
        case 0:
            self.weapon = "m16_basic";
            break;
        case 1:
            self.weapon = "ak47_digital_acog";
            break;
        case 2:
            self.weapon = "ak47_digital_eotech";
            break;
        case 3:
            self.weapon = "ak47_digital_grenadier";
            break;
        case 4:
            self.weapon = "m16_acog";
            break;
        case 5:
            self.weapon = "ak47_digital_reflex";
            break;
        case 6:
            self.weapon = "ak47_reflex";
            break;
        case 7:
            self.weapon = "ak47_shotgun";
            break;
        case 8:
            self.weapon = "kriss";
            break;
        case 9:
            self.weapon = "fal_acog";
            break;
        case 10:
            self.weapon = "scar_h_reflex";
            break;
        case 11:
            self.weapon = "fal_shotgun";
            break;
    }

	character\character_spetsnaz_assault_rnd::main();
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
	character\character_spetsnaz_assault_rnd::precache();
    precacheitem( "m16_basic" );
    precacheitem( "ak47" );
    precacheitem( "ak47_digital_acog" );
    precacheitem( "ak47_digital_eotech" );
    precacheitem( "ak47_digital_grenadier" );
    precacheitem( "m16_acog" );
    precacheitem( "ak47_digital_reflex" );
    precacheitem( "ak47_reflex" );
    precacheitem( "ak47_shotgun" );
    precacheitem( "fal_acog" );
    precacheitem( "kriss" );
    //precacheitem( "scar_h_shotgun" );
    //precacheitem( "scar_h_shotgun_attach" );
    precacheitem( "scar_h_reflex" );
    //precacheitem( "scar_h_grenadier" );
    //precacheitem( "scar_h_m203" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
