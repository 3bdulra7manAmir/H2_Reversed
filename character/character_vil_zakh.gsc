// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_zakhaev_imran" );
    self attach( "head_zakhaev_imran", "", 1 );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_zakhaev_imran" );
    precachemodel( "head_zakhaev_imran" );
}
