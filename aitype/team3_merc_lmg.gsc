// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
/*QUAKED actor_team3_merc_LMG (0.0 1.0 0.25) (-16 -16 0) (16 16 72) SPAWNER FORCESPAWN UNDELETABLE PERFECTENEMYINFO DONTSHAREENEMYINFO
defaultmdl="body_airborne_lmg"
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
	self.additionalAssets = "";
	if(level.script == "boneyard")
	{
		self.team = "allies";
	}
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
		self setEngagementMinDist( 512.000000, 400.000000 );
		self setEngagementMaxDist( 1024.000000, 1250.000000 );
	}

	switch( codescripts\character::get_random_weapon(3) )
	{
	case 0:
		self.weapon = "rpd";
		break;
	case 1:
		self.weapon = "rpd_reflex";
		break;
	case 2:
		self.weapon = "rpd_acog";
		break;
	}

	character\character_merc_rnd::main();
}

spawner()
{
	self setspawnerteam("team3");
}

precache()
{
	character\character_merc_rnd::precache();
	precacheItem("rpd");
	precacheItem("rpd_reflex");
	precacheItem("rpd_acog");
	precacheItem("pp2000");
	precacheItem("fraggrenade");
}
