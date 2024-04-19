main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            character\character_arab_assault::main();
            break;
        case 1:
            character\character_arab_lmg::main();
            break;
        case 2:
            character\character_arab_smg::main();
            break;
    }
	self.voice = "arab";
    self setclothtype( "vestlight" );
}

precache()
{
	character\character_arab_assault::precache();
    character\character_arab_lmg::precache();
    character\character_arab_smg::precache();

}