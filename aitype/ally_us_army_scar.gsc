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

    switch( codescripts\character::get_random_weapon(4) )
    {
        case 0:
            self.weapon = "tavor_digital_acog";
            break;
        case 1:
            self.weapon = "tavor_digital_eotech";
            break;
        case 2:
            self.weapon = "m16_acog";
            break;
        case 3:
            self.weapon = "fal_acog";
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
    precacheitem( "tavor_digital_acog" );
    precacheitem( "tavor_digital_eotech" );
    precacheitem( "m16_acog" );
    precacheitem( "fal_acog" );
    //precacheitem( "scar_h_grenadier" );
    //precacheitem( "scar_h_m203" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
