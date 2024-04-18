// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_us_army_assault_c" );
    codescripts\character::attachHead( "alias_us_army_heads", xmodelalias\alias_us_army_heads::main() );
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_us_army_assault_c" );
    codescripts\character::precacheModelArray(xmodelalias\alias_us_army_heads::main());
}
