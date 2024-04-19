main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            character\character_milita_assault::main();
            break;
        case 1:
            character\character_milita_lmg::main();
            break;
        case 2:
            character\character_milita_smg::main();
            break;
    }
	self.voice = "arab";
    self setclothtype( "vestlight" );
}

precache()
{
	character\character_milita_assault::precache();
    character\character_milita_lmg::precache();
    character\character_milita_smg::precache();

}