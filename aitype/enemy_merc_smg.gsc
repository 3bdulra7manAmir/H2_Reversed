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
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 768.0 );
    }

    switch ( codescripts\character::get_random_weapon( 7 ) )
    {
        case 0:
            self.weapon = "p90";
            break;
        case 1:
            self.weapon = "p90_acog";
            break;
        case 2:
            self.weapon = "p90_reflex";
            break;
        case 3:
            self.weapon = "ump45_reflex";
            break;
        case 4:
            self.weapon = "tmp";
            break;
        case 5:
            self.weapon = "ump45_acog";
            break;
        case 6:
            self.weapon = "ump45_eotech";
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
    precacheitem( "p90" );
    precacheitem( "p90_acog" );
    precacheitem( "p90_reflex" );
    precacheitem( "ump45_reflex" );
    precacheitem( "tmp" );
    precacheitem( "ump45_acog" );
    precacheitem( "ump45_eotech" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
