if (escapeDelay == 0) && (!dead)
{
	NewEncounter(
		choose(
			[global.enemies.slimeG,global.enemies.slimeG,global.enemies.bat],
			[global.enemies.slimeG,global.enemies.slimeG],
			[global.enemies.slimeG,global.enemies.bat,global.enemies.bat,global.enemies.bat,global.enemies.bat],
			[global.enemies.slimeG,global.enemies.bat]
		), 
		sBgField
	);
	instance_destroy();
}