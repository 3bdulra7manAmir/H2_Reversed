// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "common_rambo_anims.csv";
    self.team = "axis";
    self.type = "human";
    self.subclass = "militia";
    self.accuracy = 0.12;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 512.0, 400.0 );
        self setengagementmaxdist( 1024.0, 1250.0 );
    }

    self.weapon = "rpd_acog";

    character\character_arab_rnd::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    character\character_arab_rnd::precache();
    precacheitem( "rpd_acog" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
    maps\_rambo::main();
}
