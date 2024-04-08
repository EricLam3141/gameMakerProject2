/// @description Insert description here
// You can write your code in this editor
event_inherited();
if (hp <=0)
{
	sprite_index = sprites.down;
}
else 
{
	if (sprite_index == sprites.down) sprite_index = sprites.idle;
}


