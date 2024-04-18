// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
/*QUAKED actor_enemy_airborne_casual_a (1.0 0.25 0.0) (-16 -16 0) (16 16 72) SPAWNER FORCESPAWN UNDELETABLE PERFECTENEMYINFO DONTSHAREENEMYINFO
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
	self.additionalAssets = "";
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
		self setEngagementMinDist( 256.000000, 0.000000 );
		self setEngagementMaxDist( 768.000000, 1024.000000 );
	}

	switch( codescripts\character::get_random_weapon(12) )
	{
	case 0:
		self.weapon = "ak47";
		break;
	case 1:
		self.weapon = "ak47_digital_reflex";
		break;
	case 2:
		self.weapon = "ak47_digital_grenadier";
		break;
	case 3:
		self.weapon = "ak47_digital_acog";
		break;
	case 4:
		self.weapon = "fal_acog";
		break;
	case 5:
		self.weapon = "fal_shotgun";
		break;
	case 6:
		self.weapon = "tavor_digital_acog";
		break;
	case 7:
		self.weapon = "tavor_mars";
		break;
	case 8:
		self.weapon = "tavor_digital_eotech";
		break;
	case 9:
		self.weapon = "tavor_reflex";
		break;
	case 10:
		self.weapon = "ak47_shotgun";
		break;
	case 11:
		self.weapon = "ak47_digital_eotech";
		break;
	}

	character\character_us_army_assault_lmg::main();
}

spawner()
{
	self setspawnerteam("axis");
}

precache()
{
	character\character_us_army_assault_lmg::precache();

	precacheItem("ak47");
	precacheItem("ak47_digital_reflex");
	precacheItem("ak47_digital_grenadier");
	precacheItem("gl_ak47_digital");
	precacheItem("ak47_digital_acog");
	precacheItem("fal_acog");
	precacheItem("fal_shotgun");
	precacheItem("fal_shotgun_attach");
	precacheItem("tavor_digital_acog");
	precacheItem("tavor_mars");
	precacheItem("tavor_digital_eotech");
	precacheItem("tavor_reflex");
	precacheItem("ak47_shotgun");
	precacheItem("ak47_shotgun_attach");
	precacheItem("ak47_digital_eotech");
	precacheItem("pp2000");
	precacheItem("fraggrenade");
}
