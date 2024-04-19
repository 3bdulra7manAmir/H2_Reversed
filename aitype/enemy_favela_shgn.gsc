// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "common_rambo_anims.csv";
    self.team = "axis";
    self.type = "human";
    self.subclass = "militia";
    self.accuracy = 0.18;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 280.0, 400.0 );
    }

    switch ( codescripts\character::get_random_weapon( 2 ) )
    {
        case 0:
            self.weapon = "model1887";
            break;
        case 1:
            self.weapon = "ranger";
            break;
    }

    character\character_arab_rnd::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    character\character_arab_rnd::precache();
    precacheitem( "model1887" );
    precacheitem( "ranger" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
    maps\_rambo::main();
}
