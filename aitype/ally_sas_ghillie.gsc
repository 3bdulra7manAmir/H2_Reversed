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
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "usp_silencer";
    self.sidearm = "usp_silencer";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "m14_scoped";
    if (level.script == "estate"){
        character\character_shadow_co_smg::main();
    }
    else{
        character\character_spetsnaz_sniper::main();
    }
	
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
	character\character_shadow_co_smg::precache();
	character\character_spetsnaz_sniper::precache();
    precacheitem( "m14_scoped" );
    precacheitem( "usp_silencer" );
    precacheitem( "usp_silencer" );
    precacheitem( "fraggrenade" );
}
