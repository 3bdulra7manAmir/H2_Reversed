// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_sp_cobra_pilot_woodland_zack" );
    self attach( "head_sp_cobra_pilot_zack_wglasses", "", 1 );
    self.headmodel = "head_sp_cobra_pilot_zack_wglasses";
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_sp_cobra_pilot_woodland_zack" );
    precachemodel( "head_sp_cobra_pilot_zack_wglasses" );
}