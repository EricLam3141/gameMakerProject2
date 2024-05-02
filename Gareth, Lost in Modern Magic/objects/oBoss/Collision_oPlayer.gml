/// @description Insert description here
// You can write your code in this editor
if (escapeDelay == 0) && (!dead)
{
	NewEncounter(
		choose(
			[global.enemies.boss]
		), 
		sBgField
	);
	instance_destroy();
}



