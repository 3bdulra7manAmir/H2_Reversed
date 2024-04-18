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
    self.secondaryweapon = "beretta";
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "ak47";

    if(level.script == "estate"){
        character\character_tf141_arctic_rnd::main();
    }
    else{
        character\character_merc_rnd::main();
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
    precacheitem( "ak47" );
    precacheitem( "beretta" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
