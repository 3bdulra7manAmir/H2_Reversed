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
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "m16_acog";
	character\character_spetsnaz_assault_rnd::main();
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
	character\character_spetsnaz_assault_rnd::precache();
    precacheitem( "m16_acog" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
