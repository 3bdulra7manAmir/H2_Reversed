// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "neutral";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "ak47_desert";
    character\character_arab_rnd::main();
}

spawner()
{
    self setspawnerteam( "neutral" );
}

precache()
{
    character\character_arab_rnd::precache();
    precacheitem( "ak47_desert" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
