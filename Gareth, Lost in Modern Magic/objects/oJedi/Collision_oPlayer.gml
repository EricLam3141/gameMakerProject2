if (escapeDelay == 0) && (!dead)
{
	NewEncounter(
		choose(
			[global.enemies.jedi],
			[global.enemies.jedi,global.enemies.jedi],
			[global.enemies.jedi,global.enemies.knight]
			
		), 
		sBgField
	);
	instance_destroy();
}




