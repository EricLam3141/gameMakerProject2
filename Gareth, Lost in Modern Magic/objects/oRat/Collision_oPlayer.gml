if (escapeDelay == 0) && (!dead)
{
	NewEncounter(
		choose(
			[global.enemies.rat,global.enemies.ant,global.enemies.ant],
			[global.enemies.rat,global.enemies.rat],
			[global.enemies.rat,global.enemies.ant,global.enemies.rat],
			[global.enemies.rat]
		), 
		sBgField
	);
	instance_destroy();
}