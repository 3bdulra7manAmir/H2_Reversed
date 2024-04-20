// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_airborne_assault_a" );
    self attach( "head_hero_yuri_a", "", 1 );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_airborne_assault_a" );
    precachemodel( "head_hero_yuri_a" );
}
