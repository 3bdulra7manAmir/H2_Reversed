// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "sniper_glint.csv";
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

    switch( codescripts\character::get_random_weapon(2) )
    {
        case 0:
            self.weapon = "wa2000_thermal";
            break;
        case 1:
            self.weapon = "wa2000";
            break;
    }
    if ( level.script == "af_caves" || level.script == "af_chase" || level.script == "boneyard" || level.script == "ending")
	{
        character\character_shadow_co_lmg::main();
	}
	else
	{
	    character\character_spetsnaz_lmg_rnd::main();
	}

}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
	character\character_spetsnaz_lmg_rnd::precache();
    character\character_shadow_co_lmg::precache();
    precacheitem( "wa2000_thermal" );
    precacheitem( "wa2000" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
