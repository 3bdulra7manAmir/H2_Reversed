main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 5 ) )
    {
        case 0:
            character\character_tf141_arctic_a::main();
            break;
        case 1:
            character\character_tf141_arctic_b::main();
            break;
        case 2:
            character\character_tf141_arctic_c::main();
            break;
        case 3:
            character\character_tf141_arctic_d::main();
            break;
        case 4:
            character\character_tf141_arctic_e::main();
            break;
    }
	self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
	character\character_tf141_arctic_a::precache();
    character\character_tf141_arctic_b::precache();
    character\character_tf141_arctic_c::precache();
    character\character_tf141_arctic_d::precache();
    character\character_tf141_arctic_e::precache();
}