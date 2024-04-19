main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 4 ) )
    {
        case 0:
            character\character_spetsnaz_smg_a::main();
            break;
        case 1:
            character\character_spetsnaz_smg_b::main();
            break;
        case 2:
            character\character_spetsnaz_smg_c::main();
            break;
    }
	self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
	character\character_spetsnaz_smg_a::precache();
    character\character_spetsnaz_smg_b::precache();
    character\character_spetsnaz_smg_c::precache();
}