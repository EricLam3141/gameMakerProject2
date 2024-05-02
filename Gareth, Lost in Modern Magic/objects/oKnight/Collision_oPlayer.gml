/// @description Insert description here
// You can write your code in this editor
if (escapeDelay == 0) && (!dead)
{
	NewEncounter(
		choose(
			[global.enemies.knight],
			[global.enemies.knight,global.enemies.knight],
			[global.enemies.knight,global.enemies.jedi],
			[global.enemies.knight, global.enemies.jedi, global.enemies.jedi]
			
		), 
		sBgField
	);
	instance_destroy();
}



