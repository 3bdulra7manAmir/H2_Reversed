main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 8 ) )
    {
        case 0:
            character\character_spetsnaz_arctic_shotgun::main();
            break;
        case 1:
            character\character_spetsnaz_arctic_shotgun_b::main();
            break;
        case 2:
            character\character_spetsnaz_arctic_shotgun_c::main();
            break;
        case 3:
            character\character_spetsnaz_arctic_shotgun_d::main();
            break;
        case 4:
            character\character_spetsnaz_arctic_shotgun_e::main();
            break;
        case 5:
            character\character_spetsnaz_arctic_shotgun_f::main();
            break;
        case 6:
            character\character_spetsnaz_arctic_shotgun_i::main();
            break;
        case 7:
            character\character_spetsnaz_arctic_shotgun_j::main();
            break;
    }
	self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
	character\character_spetsnaz_arctic_shotgun::precache();
    character\character_spetsnaz_arctic_shotgun_b::precache();
    character\character_spetsnaz_arctic_shotgun_c::precache();
    character\character_spetsnaz_arctic_shotgun_d::precache();
    character\character_spetsnaz_arctic_shotgun_e::precache();
    character\character_spetsnaz_arctic_shotgun_f::precache();
    character\character_spetsnaz_arctic_shotgun_i::precache();
    character\character_spetsnaz_arctic_shotgun_j::precache();
}