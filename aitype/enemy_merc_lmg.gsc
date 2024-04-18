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
    self.secondaryweapon = "";
    self.sidearm = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 512.0, 400.0 );
        self setengagementmaxdist( 1024.0, 1250.0 );
    }

    switch ( codescripts\character::get_random_weapon( 3 ) )
    {
        case 0:
            self.weapon = "rpd";
            break;
        case 1:
            self.weapon = "rpd_reflex";
            break;
        case 2:
            self.weapon = "rpd_acog";
            break;
    }

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
    precacheitem( "rpd" );
    precacheitem( "rpd_reflex" );
    precacheitem( "rpd_acog" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
