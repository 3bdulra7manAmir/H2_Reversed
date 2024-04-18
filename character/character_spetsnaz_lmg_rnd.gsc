main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            character\character_spetsnaz_lmg_a::main();
            break;
        case 1:
            character\character_spetsnaz_lmg_b::main();
            break;
        case 2:
            character\character_spetsnaz_lmg_c::main();
            break;
    }
	self.voice = "british";
    self setclothtype( "vestlight" );
}

precache()
{
	character\character_spetsnaz_lmg_a::precache();
    character\character_spetsnaz_lmg_b::precache();
    character\character_spetsnaz_lmg_c::precache();

}