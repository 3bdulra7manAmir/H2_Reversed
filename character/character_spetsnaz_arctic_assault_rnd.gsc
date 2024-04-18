main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 8 ) )
    {
        case 0:
            character\character_spetsnaz_arctic_assault_a::main();
            break;
        case 1:
            character\character_spetsnaz_arctic_assault_b::main();
            break;
        case 2:
            character\character_spetsnaz_arctic_assault_c::main();
            break;
        case 3:
            character\character_spetsnaz_arctic_assault_d::main();
            break;
        case 4:
            character\character_spetsnaz_arctic_assault_e::main();
            break;
        case 5:
            character\character_spetsnaz_arctic_assault_f::main();
            break;
        case 6:
            character\character_spetsnaz_arctic_assault_i::main();
            break;
        case 7:
            character\character_spetsnaz_arctic_assault_j::main();
            break;
    }
	self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
	character\character_spetsnaz_arctic_assault_a::precache();
    character\character_spetsnaz_arctic_assault_b::precache();
    character\character_spetsnaz_arctic_assault_c::precache();
    character\character_spetsnaz_arctic_assault_d::precache();
    character\character_spetsnaz_arctic_assault_e::precache();
    character\character_spetsnaz_arctic_assault_f::precache();
    character\character_spetsnaz_arctic_assault_i::precache();
    character\character_spetsnaz_arctic_assault_j::precache();
}