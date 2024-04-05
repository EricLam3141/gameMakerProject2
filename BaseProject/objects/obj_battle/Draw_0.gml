/// @description Insert description here
// You can write your code in this editor

draw_sprite(battleBackground,0,x,y);

//Draw unitsin depth order
var _unitWithCurrentTurn = unitTurnOrder[turn].id;
for (var i = 0; i <array_length(unitRenderOrder); i++)
{
	with(unitRenderOrder[i])
	{
		draw_self();
	}
}


//Draw ui boxes
draw_sprite_stretched(sBox,0,x+75,y+120,245,60);
draw_sprite_stretched(sBox,0,x,y+120,74,60);


//Positions
#macro COLUMN_ENEMY 15
#macro COLUMN_NAME 90
#macro COLUMN_HP 160
#macro COLUMN_MP 220

//Headings

draw_set_font(fnM3x6);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_dkgray);
draw_text(x + COLUMN_ENEMY, y+120, "ENEMY");
draw_text(x + COLUMN_NAME, y+120, "NAME");
draw_text(x + COLUMN_HP, y+120, "HP");
draw_text(x + COLUMN_MP, y+120, "MP");