// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_opforce_arctic_assault_c" );
    self attach( "head_hero_yuri_a", "", 1 );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_opforce_arctic_assault_c" );
    precachemodel( "head_hero_yuri_a" );
}
