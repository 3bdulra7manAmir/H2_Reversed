main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 5 ) )
    {
        case 0:
            character\character_us_army_assault_a::main();
            break;
        case 1:
            character\character_us_army_assault_b::main();
            break;
        case 2:
            character\character_us_army_assault_c::main();
            break;
        case 3:
            character\character_us_army_assault_d::main();
            break;
        case 4:
            character\character_us_army_assault_lmg::main();
            break;
    }
	self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
	character\character_us_army_assault_a::precache();
    character\character_us_army_assault_b::precache();
    character\character_us_army_assault_c::precache();
    character\character_us_army_assault_d::precache();
    character\character_us_army_assault_lmg::precache();
}