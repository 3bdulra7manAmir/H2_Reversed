// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	codescripts\character::setModelFromArray(xmodelalias\alias_spetsnaz_shotgun_bodies::main());
	codescripts\character::attachHead( "alias_spetsnaz_heads", xmodelalias\alias_spetsnaz_heads::main() );
	self.voice = "russian";
	self setclothtype( "vestlight" );
}

precache()
{
	codescripts\character::precacheModelArray(xmodelalias\alias_spetsnaz_shotgun_bodies::main());
	codescripts\character::precacheModelArray(xmodelalias\alias_spetsnaz_heads::main());
}
