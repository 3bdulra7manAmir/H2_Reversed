// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    codescripts\character::setModelFromArray(xmodelalias\alias_merc_bodies::main());
    codescripts\character::attachHead( "alias_merc_heads", xmodelalias\alias_merc_heads::main() );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    codescripts\character::precacheModelArray(xmodelalias\alias_merc_bodies::main());
    codescripts\character::precacheModelArray(xmodelalias\alias_merc_heads::main());
}
