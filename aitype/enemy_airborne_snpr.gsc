// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
/*QUAKED actor_enemy_airborne_SNPR (1.0 0.25 0.0) (-16 -16 0) (16 16 72) SPAWNER FORCESPAWN UNDELETABLE PERFECTENEMYINFO DONTSHAREENEMYINFO
defaultmdl="body_airborne_assault_a"
"count" -- max AI to ever spawn from this spawner
SPAWNER -- makes this a spawner instead of a guy
FORCESPAWN -- will try to delete an AI if spawning fails from too many AI
UNDELETABLE -- this AI (or AI spawned from here) cannot be deleted to make room for FORCESPAWN guys
PERFECTENEMYINFO -- this AI when spawned will get a snapshot of perfect info about all enemies
DONTSHAREENEMYINFO -- do not get shared info about enemies at spawn time from teammates
*/
main()
{
	self.animTree = "";
	self.additionalAssets = "sniper_glint.csv";
	self.team = "axis";
	self.type = "human";
	self.subclass = "regular";
	self.accuracy = 0.2;
	self.health = 150;
	self.secondaryweapon = "";
	self.sidearm = "pp2000";
	self.grenadeWeapon = "fraggrenade";
	self.grenadeAmmo = 0;

	if ( isAI( self ) )
	{
		self setEngagementMinDist( 1250.000000, 1024.000000 );
		self setEngagementMaxDist( 1600.000000, 2400.000000 );
	}

	self.weapon = "cheytac_silencer";

	character\character_us_army_assault_rnd::main();
}

spawner()
{
	self setspawnerteam("axis");
}

precache()
{
	character\character_us_army_assault_rnd::precache();

	precacheItem("cheytac_silencer");
	precacheItem("pp2000");
	precacheItem("fraggrenade");

	//----------------
	maps\_sniper_glint::main();
	//----------------
}
