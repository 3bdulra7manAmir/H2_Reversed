// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "axis";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "ak47_woodland_reflex";
    self.sidearm = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 768.0, 512.0 );
        self setengagementmaxdist( 1024.0, 1500.0 );
    }

    self.weapon = "rpg";

    if(level.script == "estate")
    {
        character\character_merc_rnd::main();
    }
    else
    {
        character\character_tf141_arctic_rnd::main();
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    character\character_tf141_arctic_rnd::precache();
    character\character_merc_rnd::precache();
    precacheitem( "rpg" );
    precacheitem( "ak47_woodland_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
