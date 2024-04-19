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

    self.weapon = "mp5_silencer_reflex";
	character\character_vil_makarov::main();
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
	character\character_vil_makarov::precache();
    precacheitem( "mp5_silencer_reflex" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
