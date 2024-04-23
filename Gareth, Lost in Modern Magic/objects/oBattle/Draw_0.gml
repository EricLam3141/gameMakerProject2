//Draw background art
draw_sprite(battleBackground,0,x,y);

//Draw units in depth order
var _unitWithCurrentTurn = unitTurnOrder[turn].id;
for (var i = 0; i < array_length(unitRenderOrder); i++)
{
	with (unitRenderOrder[i])
	{
		draw_self();
		if (id == _unitWithCurrentTurn) && (!enemy) && (instance_exists(obj_menu)) draw_sprite(sTurnIndicator, 0, x, y);
	}
}

//Positions
#macro COLUMN_ENEMY 15
#macro COLUMN_NAME 90
#macro COLUMN_HP 160
#macro COLUMN_MP 220

draw_sprite_stretched(sBox,0,x+75,y+120,245,60);
draw_sprite_stretched(sBox,0,x,y+120,74,60);

//Draw headings
draw_set_font(fnM3x6);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_gray);
draw_text(x+COLUMN_ENEMY,y+120,"ENEMY");
draw_text(x+COLUMN_NAME,y+120,"NAME");
draw_text(x+COLUMN_HP,y+120,"HP");
draw_text(x+COLUMN_MP,y+120,"MP");

draw_set_font(fnOpenSansPX);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

//Draw enemy names
var _drawLimit = 3;
var _drawn = 0;
for (var i = 0; (i < array_length(enemyUnits)) && (_drawn < _drawLimit); i++)
{
	var _char = enemyUnits[i];
	if (_char.hp > 0)
	{
		_drawn++;
		draw_set_halign(fa_left);
		draw_set_color(c_white);
		if (_char.id == _unitWithCurrentTurn) draw_set_color(c_yellow);
		draw_text(x+COLUMN_ENEMY,y+130+(i*12),_char.name);
	}
}

//Draw party info
for (var i = 0; i < array_length(partyUnits); i++)
{
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	var _char = partyUnits[i];
	if (_char.id == _unitWithCurrentTurn) draw_set_color(c_yellow);
	if (_char.hp <= 0) draw_set_color(c_red);
	draw_text(x+COLUMN_NAME,y+130+(i*12),_char.name);
	draw_set_halign(fa_right);
	
	draw_set_color(c_white);
	if (_char.hp < (_char.hpMax * 0.5)) draw_set_color(c_orange);
	if (_char.hp <= 0) draw_set_color(c_red);
	draw_text(x+COLUMN_HP+50,y+130+(i*12),string(_char.hp) + "/" + string(_char.hpMax));
	
	draw_set_color(c_white);
	if (_char.mp < (_char.mpMax * 0.5)) draw_set_color(c_orange);
	if (_char.hp <= 0) draw_set_color(c_red);
	draw_text(x+COLUMN_MP+50,y+130+(i*12),string(_char.mp) + "/" + string(_char.mpMax));
	
	draw_set_color(c_white);
}

if (targetCursor.cursorActive)
{
	with (targetCursor)
	{
		if (cursorTarget != noone) 
		{
			if (is_array(cursorTarget))
			{
				draw_set_alpha(sin(get_timer()/50000)+1);
				for (var i = 0; i < array_length(cursorTarget); i++)
				{
					draw_sprite(spr_pointer,cursorError,cursorTarget[i].x,cursorTarget[i].y);
				}
				draw_set_alpha(1.0);
			}
			else draw_sprite(spr_pointer,cursorError,cursorTarget.x,cursorTarget.y);
		}
	}
}

//Draw battle text
if (battleText != "")
{
	var _w = string_width(battleText)+20;
	draw_sprite_stretched(sBox,0,x+160-(_w*0.5),y+5,_w,25);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(x+160,y+10,battleText);
	
	//Continue arrow for multi message
	if (battleState == 2) 
	{
		draw_set_alpha(sin(get_timer()/50000)+1);
		draw_sprite(sDownArrow,0,x + 160, y + 32);
		draw_set_alpha(1.0);
	}
	
	draw_set_halign(fa_left);
}