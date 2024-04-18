// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
/*QUAKED actor_enemy_arctic_SMG (1.0 0.25 0.0) (-16 -16 0) (16 16 72) SPAWNER FORCESPAWN UNDELETABLE PERFECTENEMYINFO DONTSHAREENEMYINFO
defaultmdl="body_opforce_arctic_smg"
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
	self.team = "axis";
	self.type = "human";
	self.subclass = "regular";
	self.accuracy = 0.2;
	self.health = 150;
	self.secondaryweapon = "";
	self.sidearm = "usp";
	self.grenadeWeapon = "fraggrenade";
	self.grenadeAmmo = 0;

	if ( isAI( self ) )
	{
		self setEngagementMinDist( 128.000000, 0.000000 );
		self setEngagementMaxDist( 512.000000, 768.000000 );
	}

	switch( codescripts\character::get_random_weapon(7) )
	{
	case 0:
		self.weapon = "kriss";
		break;
	case 1:
		self.weapon = "kriss_reflex";
		break;
	case 2:
		self.weapon = "ump45_arctic";
		break;
	case 3:
		self.weapon = "ump45_reflex";
		break;
	case 4:
		self.weapon = "p90";
		break;
	case 5:
		self.weapon = "kriss_eotech";
		break;
	case 6:
		self.weapon = "p90_arctic";
		break;
	}

	if(level.script == "cliffhanger" || level.script == "contingency")
	{
		character\character_sp_usmc_force_rnd::main();
	}
	else
	{
		character\character_tf141_arctic_rnd::main();
	}
}

spawner()
{
	self setspawnerteam("axis");
}

precache()
{
	character\character_sp_usmc_force_rnd::precache();
	character\character_tf141_arctic_rnd::precache();
	precacheItem("kriss");
	precacheItem("kriss_reflex");
	precacheItem("ump45_arctic");
	precacheItem("ump45_reflex");
	precacheItem("p90");
	precacheItem("kriss_eotech");
	precacheItem("p90_arctic");
	precacheItem("usp");
	precacheItem("fraggrenade");
}
