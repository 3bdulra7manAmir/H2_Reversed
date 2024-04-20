// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_spetsnaz_assault_yuri" );
    self attach( "head_hero_yuri_a", "", 1 );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_spetsnaz_assault_yuri" );
    precachemodel( "head_hero_yuri_a" );
}
