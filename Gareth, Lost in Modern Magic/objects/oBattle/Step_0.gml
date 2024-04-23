battleState();

//Cursor control
if (targetCursor.cursorActive)
{
	with (targetCursor)
	{
		//input
		var _keyUp = keyboard_check_pressed(vk_up);
		var _keyDown = keyboard_check_pressed(vk_down);
		var _keyLeft = keyboard_check_pressed(vk_left);
		var _keyRight = keyboard_check_pressed(vk_right);
		var _keyToggle = false;
		var _keyConfirm = false
		var _keyCancel = false;
		cursorConfirmDelay++
		if (cursorConfirmDelay > 1) 
		{
			_keyConfirm = keyboard_check_pressed(vk_enter);
			_keyCancel = keyboard_check_pressed(vk_escape);
			_keyToggle = keyboard_check_pressed(vk_shift);
		}
		var _moveH = _keyRight - _keyLeft;
		var _moveV = _keyDown - _keyUp;
	

		if (_moveH == -1) cursorSide = oBattle.partyUnits;
		if (_moveH == 1) cursorSide = oBattle.enemyUnits;
		
		//verify target list 
		if (cursorSide == oBattle.enemyUnits)
		{
			cursorSide = array_filter(cursorSide, function(_element, _index)
			{
				return _element.hp > 0;
			});
		}
		
		if (cursorAll == 0) //Single target mode
		{
			if (_moveV == 1) cursorIndex++;
			if (_moveV == -1) cursorIndex--;
			var _targets = array_length(cursorSide);
			if (cursorIndex < 0) cursorIndex = _targets - 1;
			if (cursorIndex > (_targets - 1)) cursorIndex = 0;
			
			cursorTarget = cursorSide[cursorIndex];
			
			if (cursorAction.targetAll == MODE.VARIES) && (_keyToggle) //switch to all mode
			{
				cursorAll = 1; 
			}
		}
		else //target all mode
		{
			cursorTarget = cursorSide;
			cursorError = false;
			if (cursorAction.targetAll == MODE.VARIES) && (_keyToggle) //switch to single mode
			{
				cursorAll = 0; 
			}
		}
		
		if (!cursorError)
		{
			if (_keyConfirm)
			{
				with (oBattle) BeginAction(targetCursor.cursorUser, targetCursor.cursorAction, targetCursor.cursorTarget);
				with (obj_menu) instance_destroy();
				cursorActive = false;	
				cursorConfirmDelay = 0;
			}
		}
		
		if (_keyCancel) && (!_keyConfirm)
		{
			with (obj_menu) active = true;	
			cursorActive = false;
			cursorConfirmDelay = 0;
		}
	}
}