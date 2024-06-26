enum MODE
{
	NEVER = 0,
	ALWAYS = 1,
	VARIES = 2,
}


//Action library
global.actionLibrary =
{
	attack : 
	{
		name : "Attack",
		description : "{0} attacks!",
		subMenu : -1,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.NEVER,
		userAnimation : "attack",
		sound: sndAttack,
		effectSprite: sAttackBonk,
		effectOnTarget: MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25));
			if (_targets[0].defending) _damage = ceil(_damage * 0.75);
			BattleChangeHP(_targets[0], -_damage);
		}		
	}
	,
	attackSlash :
	{
		name : "Attack",
		description : "{0} Slashes!",
		subMenu : -1,
		targetRequired: true,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetAll: MODE.NEVER,
		userAnimation : "attack",
		effectSprite: sAttackSlash,
		effectOnTarget: MODE.ALWAYS,
		sound: sndSlash,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25));
			if (_targets[0].defending) _damage = ceil(_damage * 0.75);
			BattleChangeHP(_targets[0], -_damage);
		}		
	}
	,
	defend : 
	{
		name : "Defend",
		description : "{0} defends!",
		subMenu : -1,
		targetRequired: false,
		func : function(_user, _target)
		{
			_user.defending = true;
		}		
	}
	,
	escape : 
	{
		name : "Escape",
		description : "",
		subMenu : -1,
		targetRequired: false,
		func : function(_user, _target)
		{
			if (random(1) < 0.8) //success
			{
				oBattle.escaped = true;
			}
			else //fail
			{
				oBattle.battleText = "Failed to escape!";
			}
		}		
	}
	,
	fire : 
	{
		name : "Fire",
		description : "{0} casts Fire!",
		subMenu : "Magic",
		mpCost : 10,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetRequired: true,
		targetAll: MODE.VARIES,
		userAnimation : "cast",
		effectSprite: sAttackFire,
		effectSpriteNoTarget: sExplode,
		effectOnTarget: MODE.VARIES,
		sound: sndFire,
		func : function(_user, _targets)
		{
			for (var i = 0; i < array_length(_targets); i++)
			{
				var _damage = irandom_range(15,20);
				if (array_length(_targets) > 1) _damage = ceil(_damage*0.75);
				BattleChangeHP(_targets[i], -_damage);
			}
			BattleChangeMP(_user, -mpCost)
		}		
	}
	,
	ice : 
	{
		name : "Ice",
		description : "{0} casts Ice!",
		subMenu : "Magic",
		mpCost : 4,
		targetRequired: true,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetAll: MODE.NEVER,
		userAnimation : "cast",
		effectSprite: sAttackIce,
		effectOnTarget: MODE.ALWAYS,
		sound: sndIce,
		func : function(_user, _targets)
		{
			var _damage = irandom_range(10,15);
			BattleChangeHP(_targets[0], -_damage);
			BattleChangeMP(_user, -mpCost)
		}		
	}
	,
	love:{
		name: "Love Beam",
		description: "{0} cast Love Beam! <3",
		subMenu: "Magic",
		mpCost: 5,
		targetRequired: true,
		targetEnemyByDefault: true,
		targetAll: MODE.VARIES,
		userAnimation: "attack",
		effectSprite: spr_heart_attack,
		effectOnTarget: MODE.ALWAYS,
		sound: sndLove,
		func : function(_user, _targets)
		{
			var _damage = irandom_range(7,10);
			BattleChangeHP(_targets[0], -_damage);
			BattleChangeMP(_user, -mpCost)
		}		
	}
	
	,fans : 
	{
		name : "Fan Support",
		description : "{0} receives Fan Support! Rika is Empowered!!",
		subMenu : "Magic",
		mpCost : 15,
		targetRequired: false,
		targetEnemyByDefault: false, //0: party/self, 1: enemy
		targetAll: MODE.ALWAYS,
		effectSprite: sAttackHeal,
		effectOnTarget: MODE.ALWAYS,
		sound: sndCure,
		userAnimation : "attack",
		func : function(_user, _targets)
		{
			
				var _heal = irandom_range(10,25);
				BattleChangeHP(_user, _heal);
				_user.strength += 1;
			BattleChangeMP(_user, -mpCost)
		}		
	}
	,
	cureall : 
	{
		name : "Mass Cure",
		description : "{0} casts Mass Cure!",
		subMenu : "Magic",
		mpCost : 6,
		targetRequired: true,
		targetEnemyByDefault: false, //0: party/self, 1: enemy
		targetAll: MODE.ALWAYS,
		effectSprite: sAttackHeal,
		effectOnTarget: MODE.ALWAYS,
		sound: sndCure,
		userAnimation : "cast",
		func : function(_user, _targets)
		{
			for (var i = 0; i < array_length(_targets); i++)
			{
				var _heal = irandom_range(15,20);
				BattleChangeHP(_targets[i], _heal);
			}
			BattleChangeMP(_user, -mpCost)
		}		
	}
	,
	potion : 
	{
		name : "Potion",
		description : "{0} uses a Potion!",
		subMenu : "Item",
		targetRequired: true,
		targetEnemyByDefault: false, //0: party/self, 1: enemy
		targetAll: MODE.NEVER,
		func : function(_user, _targets)
		{
			var _heal = 30;
			BattleChangeHP(_targets[0], _heal);
		}		
	}
	,
	ether : 
	{
		name : "Ether",
		description : "{0} uses a Mana potion!",
		subMenu : "Item",
		targetEnemyByDefault: false, //0: party/self, 1: enemy
		targetAll: MODE.NEVER,
		targetRequired: true,
		func : function(_user, _targets)
		{
			var _healMP = 50;
			BattleChangeMP(_targets[0], _healMP, true);
		}		
	}
	,
	revive : 
	{
		name : "Revive",
		description : "{0} uses Revive!",
		subMenu : "Item",
		targetEnemyByDefault: false, //0: party/self, 1: enemy
		targetAll: MODE.NEVER,
		targetRequired: true,
		func : function(_user, _targets)
		{
			var _heal = 30;
			BattleChangeHP(_targets[0], _heal, 1);
		}		
	}
}

//Party data
global.party = 
[
	{
		name: "Kevin-Kun",
		hp: 52,
		hpMax: 52,
		mp: 0,
		mpMax: 0,
		strength: 7,
		sprites : { idle: spr_kevin_idle, attack: spr_kevin_attack, defend: spr_kevin_defend, down: spr_kevin_down},
		actions : [global.actionLibrary.attackSlash, global.actionLibrary.defend, global.actionLibrary.escape]
	}
	,
	{
		name: "Gareth",
		hp: 44,
		hpMax: 44,
		mp: 35,
		mpMax: 35,
		strength: 4,
		sprites : { idle: spr_player_idle, attack: spr_player_attack, cast: spr_player_attack, down: spr_player_down},
		actions : [global.actionLibrary.attack, global.actionLibrary.fire, global.actionLibrary.ice, global.actionLibrary.cureall, global.actionLibrary.escape]
	}
]

//Enemy Data
global.enemies =
{
	rat: 
	{
		name: "Giga Rat",
		hp: 15,
		hpMax: 15,
		mp: 0,
		mpMax: 0,
		strength: 3,
		sprites: { idle: spr_rat, attack: spr_rat_attack},
		actions: [global.actionLibrary.attack],
		xpValue : 15,
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	ant: 
	{
		name: "Giga Ant",
		hp: 10,
		hpMax: 10,
		mp: 0,
		mpMax: 0,
		strength: 2,
		sprites: { idle: spr_ant, attack: spr_ant_attack},
		actions: [global.actionLibrary.attack],
		xpValue : 18,
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	
	,jedi:
	{
		name: "Jedi",
		hp: 25,
		hpMax: 25,
		mp: 5,
		mpMax: 5,
		strength: 8,
		sprites: {idle: spr_jedi_battle, attack: spr_jedi_attack},
		actions: [global.actionLibrary.attackSlash],
		xpValue: 30,
		AIscript:  function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	
	,knight:
	{
		name: "Knight",
		hp: 35,
		hpMax: 35,
		mp: 0,
		mpMax: 0,
		strength: 10,
		sprites: {idle: spr_knight_idle, attack: spr_knight_attack},
		actions: [global.actionLibrary.attackSlash],
		xpValue: 45,
		AIscript:  function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	
	,boss:
	{
		name: "Rika",
		hp: 125,
		hpMax: 125,
		mp: 75,
		mpMax: 75,
		strength: 5,
		sprites: {idle: spr_boss_idle,attack: spr_boss_attack},
		actions: [global.actionLibrary.attack,global.actionLibrary.love,global.actionLibrary.fans],
		xpValue: 255,
		AIscript:  function()
		{
			//attack random party member
			var _decideAction = irandom_range(0,array_length(actions) -1 )
			var _action = actions[_decideAction];
			if(mp == 0){
				_action = global.actionLibrary.attack
			}
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
}


//Inventory
global.inventory =
[
	[global.actionLibrary.potion, 4],
	[global.actionLibrary.revive, 2],
	[global.actionLibrary.ether, 1],
]

function RemoveItemFromInventory(_item, _amount)
{
	
	for (var i = 0; i < array_length(global.inventory); i++)
	{
		if (global.inventory[i][0] == _item)
		{
			global.inventory[i][1] -= _amount;
			break;
		}
	}
}











