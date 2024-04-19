// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    codescripts\character::setModelFromArray(xmodelalias\alias_tf141_arctic_bodies::main());
    codescripts\character::attachHead( "alias_tf141_arctic_heads", xmodelalias\alias_us_army_heads::main() );
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    codescripts\character::precacheModelArray(xmodelalias\alias_tf141_arctic_bodies::main());
    codescripts\character::precacheModelArray(xmodelalias\alias_us_army_heads::main());
}
