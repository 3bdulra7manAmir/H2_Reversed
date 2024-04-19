// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "common_rambo_anims.csv";
    self.team = "axis";
    self.type = "human";
    self.subclass = "militia";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "ak47";
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 768.0, 512.0 );
        self setengagementmaxdist( 1024.0, 1500.0 );
    }

    self.weapon = "rpg";

    character\character_arab_rnd::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    character\character_arab_rnd::precache();
    precacheitem( "rpg" );
    precacheitem( "ak47" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
    maps\_rambo::main();
}
