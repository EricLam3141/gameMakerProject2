function NewEncounter(_enemies, _bg)
{
	instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-9999,oBattle,{ enemies: _enemies, creator: id, battleBackground: _bg});
}

function BattleChangeHP(_target, _amount, _livingCheck = 0)
{
		//_livingCheck: 0 = alive only, 1 = dead only, 2 = any
		var _failed = false;
		if (_livingCheck == 0) && (_target.hp <= 0) _failed = true;
		if (_livingCheck == 1) && (_target.hp > 0) _failed = true;
	
		var _col = c_white;
		if (_amount > 0) _col = c_lime;
		if (_failed) 
		{
			_col = c_white;
			_amount = "failed";
		}
		instance_create_depth(_target.x,_target.y,_target.depth-1, oFloatingText, {font: fnM5x7, col: _col, text: string(_amount)})
		if (!_failed) _target.hp = clamp(_target.hp + _amount, 0, _target.hpMax);
		
}

function BattleChangeMP(_target, _amount, _show = false)
{
	if (_show) instance_create_depth(_target.x,_target.y,_target.depth-1, oFloatingText, {font: fnM5x7, col: c_aqua, text: string(_amount) + "mp"})
	_target.mp = clamp(_target.mp + _amount, 0, _target.mpMax);
}

//After picking an action, confirm any targets or options and then continue
function MenuSelectAction(_user, _action)
{
	//make menu inactive
	with (obj_menu) active = false;
	
	with (oBattle)
	{
		if (_action.targetRequired)
		{
			with (targetCursor)
			{
				cursorAction = _action;
				cursorAll = _action.targetAll;
				if (cursorAll == MODE.VARIES) cursorAll = 1; //"toggle" starts as all by default
				cursorUser = _user;
				cursorActive = true;
				if (_action.targetEnemyByDefault) //cursorTarget enemy by default
				{
					cursorIndex = 0;
					cursorSide = oBattle.enemyUnits;
					cursorTarget = oBattle.enemyUnits[cursorIndex];
				}
				else //cursorTarget self by default
				{
					cursorSide = oBattle.partyUnits;
					cursorTarget = cursorUser;
					var _findSelf = function(_element, _user)
					{
						return (_element == cursorTarget)	
					}
					cursorIndex = array_find_index(oBattle.partyUnits, _findSelf);
				}
			}
		}
		else
		{
			with (obj_menu) instance_destroy();
			BeginAction(_user,_action,-1)
		}
	}
}

function IsActionAvailable(_unit, _action)
{
	
	if (variable_struct_exists(_action, "mpCost"))
	{
		if (_unit.mp >= _action.mpCost) return true;	
	}
	else
	{
		return true;
	}
	return false;
}