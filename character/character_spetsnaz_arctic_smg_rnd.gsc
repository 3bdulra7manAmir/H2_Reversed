main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 8 ) )
    {
        case 0:
            character\character_spetsnaz_arctic_smg::main();
            break;
        case 1:
            character\character_spetsnaz_arctic_smg_b::main();
            break;
        case 2:
            character\character_spetsnaz_arctic_smg_c::main();
            break;
        case 3:
            character\character_spetsnaz_arctic_smg_d::main();
            break;
        case 4:
            character\character_spetsnaz_arctic_smg_e::main();
            break;
        case 5:
            character\character_spetsnaz_arctic_smg_f::main();
            break;
        case 6:
            character\character_spetsnaz_arctic_smg_i::main();
            break;
        case 7:
            character\character_spetsnaz_arctic_smg_j::main();
            break;
    }
	self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
	character\character_spetsnaz_arctic_smg::precache();
    character\character_spetsnaz_arctic_smg_b::precache();
    character\character_spetsnaz_arctic_smg_c::precache();
    character\character_spetsnaz_arctic_smg_d::precache();
    character\character_spetsnaz_arctic_smg_e::precache();
    character\character_spetsnaz_arctic_smg_f::precache();
    character\character_spetsnaz_arctic_smg_i::precache();
    character\character_spetsnaz_arctic_smg_j::precache();
}