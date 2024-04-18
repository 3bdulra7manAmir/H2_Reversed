main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            character\character_us_army_smg::main();
            break;
        case 1:
            character\character_us_army_smg_b::main();
            break;
        case 2:
            character\character_us_army_smg_c::main();
            break;
    }
	self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
	character\character_us_army_smg::precache();
    character\character_us_army_smg_b::precache();
    character\character_us_army_smg_c::precache();
}