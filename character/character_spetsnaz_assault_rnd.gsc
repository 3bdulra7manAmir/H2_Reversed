main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 6 ) )
    {
        case 0:
            character\character_spetsnaz_assault_a::main();
            break;
        case 1:
            character\character_spetsnaz_assault_a_noik::main();
            break;
        case 2:
            character\character_spetsnaz_assault_b::main();
            break;
        case 3:
            character\character_spetsnaz_assault_b_noik::main();
            break;
        case 4:
            character\character_spetsnaz_assault_c::main();
            break;
        case 5:
            character\character_spetsnaz_assault_c_noik::main();
            break;
    }
	self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
	character\character_spetsnaz_assault_a::precache();
    character\character_spetsnaz_assault_a_noik::precache();
    character\character_spetsnaz_assault_b::precache();
    character\character_spetsnaz_assault_b_noik::precache();
    character\character_spetsnaz_assault_c::precache();
    character\character_spetsnaz_assault_c_noik::precache();
}