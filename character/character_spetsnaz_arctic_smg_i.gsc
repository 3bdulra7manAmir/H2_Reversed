// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	codescripts\character::setModelFromArray(xmodelalias\alias_spetsnaz_arctic_smg_bodies::main());
	codescripts\character::attachHead( "alias_opforce_arctic_heads", xmodelalias\alias_opforce_arctic_heads::main() );
	self.voice = "russian";
	self setclothtype( "vestlight" );
}

precache()
{
	codescripts\character::precacheModelArray(xmodelalias\alias_spetsnaz_arctic_smg_bodies::main());
	codescripts\character::precacheModelArray(xmodelalias\alias_opforce_arctic_heads::main());
}
