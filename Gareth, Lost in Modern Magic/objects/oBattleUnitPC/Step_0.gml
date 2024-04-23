event_inherited();

if (oBattle.escaped) && (hp > 0)
{
	image_xscale = -1;
	x -=2;	
}

if (hp <= 0)
{
	sprite_index = sprites.down;
}
else
{
	if (sprite_index == sprites.down) sprite_index = sprites.idle;	
}