main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 5 ) )
    {
        case 0:
            character\character_merc_a::main();
            break;
        case 1:
            character\character_merc_b::main();
            break;
        case 2:
            character\character_merc_c::main();
            break;
        case 3:
            character\character_merc_d::main();
            break;
        case 4:
            character\character_merc_e::main();
            break;
    }
	self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
	character\character_merc_a::precache();
    character\character_merc_b::precache();
    character\character_merc_c::precache();
    character\character_merc_d::precache();
    character\character_merc_e::precache();
}