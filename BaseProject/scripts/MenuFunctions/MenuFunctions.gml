// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Menu(_x, _y, _options, _description = -1, _width = undefined, _height = undefined)
{
	with (instance_create_depth(_x, _y, -99999, oMenu))
	{
		options = _options;
		description = _description;
		var _optionsCount = array_length(_options);
		visibleOptionsMax = _optionsCount;
		
		//Size
		xmargin = 10;
		ymargin = 8;
		draw_set_font(fnM5x7);
		heightLine = 12;
		
		if (_width == undefined)
		{
			width = 1;
			if (description != -1) width = max(width, string_width(_description));
			for (var i = 0; i < _optionsCount; i++)
			{
				width = max(width, string_width(_options[i][0]));
			}
			widthFull = width + xmargin * 2;
		} else widthFull = _width;
		
		//Auto height
		if (_height == undefined)
		{
			height = heightLine * (_optionsCount + !(description == -1));
			heightFull = height + ymargin *2;
		}
		else
		{
			heightFull = _height;
			//scrolling
			if (heightLine * (_optionsCount + !(description == -1)) > _height - (ymargin*2))
			{
				scrolling = true;
				visibleOPtionsMax = (_height - ymargin * 2) div heightLine;
			}
		}
	}
		
}

function SubMenu (_options)
{
	optionsAbove[subMenuLevel] = options;
	subMenuLevel++;
	options = _options;
	hover = 0;
}

function MenuGoBack()
{
	subMenuLevel--;
	options = optionsAbove[subMenuLevel];
	hover = 0;
}

function MenuSelectAction(_user, _action)
{
	with(oMenu) active = false;
	//Activate cursor
	with (obj_battle) 
	{
		if (_action.targetRequired)
		{
			with (cursor)
			{
				active= true;
				activeAction = _action;
				targetAll = _action.targetAll;
				if (targetAll == MODE.VARIES) targetAll = true;
				activeUser = _user;
			
			
				//Side targetting
				if (_action.targetEnemyByDefault)
				{
					targetIndex = 0;
					targetSide = obj_battle.enemyUnits;
					activeTarget = obj_battle.enemyUnits[targetIndex];
				}
				else //Self target
				{
					targetSide = obj_battle.partyUnits;
					activeTarget = activeUser;
					var _findSelf = function(_element)
					{
						return (_element == activeTarget)
					}
					targetIndex =array_find_index(obj_battle.partyUnits, _findSelf);
				}
			}
		}
		else 
		{
			BeginAction(_user,_action, -1);
			with(oMenu) instance_destroy();
		}
	}
}

