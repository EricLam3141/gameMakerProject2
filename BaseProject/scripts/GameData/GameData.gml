global.actionLibrary = 
{
	attack:
	{
		name :"Attack",
		description : "{0} attacks!",
		subMenu : -1,
		targetRequired : true,
		targetEnemyByDefault : true,
		targetAll : MODE.NEVER,
		userAnimation : "attack", 
		effectSprite : sAttackBonk,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25));
			BattleChangeHP(_targets[0],- _damage, 0);
		}
	},
	ice :
	{
		name:"Ice", 
		description : "{0} casts Ice!",
		subMenu : "Magic",
		mpCost : 4,
		targetRequired: true,
		targetEnemyByDefault : true,
		targetAll : MODE.VARIES,
		userAnimation : "cast", 
		effectSprite : sAttackIce,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			for (var i = 0; i < array_length(_targets); i++)
			{
				var _damage = irandom_range(10,15);
				BattleChangeHP(_targets[0], -_damage);
			}

		}
		
	}
}
	
enum MODE
{
	NEVER = 0,
	ALWAYS = 1,
	VARIES = 2
	
}




//Party data scale from 1-100, divided informally into 25 segements represented by low, average, decent, and high
global.party = 
[
	{
		name: "Gareth",
		hp: 67,
		hpMax: 89,
		mp: 10,
		mpMax: 15,
		strength: 6,
		sprites : { idle: spr_player_idle, attack: spr_player_defend, defend: spr_player_defend, down: sLuluDown},
		actions : [global.actionLibrary.attack]
	}
	,
	{
		name: "Kevin-Kun",
		hp: 18,
		hpMax: 44,
		mp: 20,
		mpMax: 30,
		strength: 4,
		sprites : { idle: spr_kevin, attack: spr_kevin_attack, cast: sQuestyCast, down: sQuestyDown},
		actions : [global.actionLibrary.attack, global.actionLibrary.ice]
	}
]

//Enemy Data
global.enemies =
{
	slimeG: 
	{
		name: "GIGA RAT",
		hp: 30,
		hpMax: 30,
		mp: 0,
		mpMax: 0,
		strength: 5,
		sprites: { idle: spr_rat, attack: spr_rat_attack},
		actions: [global.actionLibrary.attack],
		xpValue : 15,
		AIscript : function()
		{
			//enemy turn ai goes here
			var _action = actions[0];
			var _possibleTargets = array_filter(obj_battle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp >0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return[_action, _target];
		}
	}
	,
	bat: 
	{
		name: "Bat",
		hp: 15,
		hpMax: 15,
		mp: 0,
		mpMax: 0,
		strength: 4,
		sprites: { idle: sBat, attack: sBatAttack},
		actions: [],
		xpValue : 18,
		AIscript : function()
		{
			//enemy turn ai goes here
			var _action = actions[0];
			var _possibleTargets = array_filter(obj_battle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp >0);
			});
			var _target = possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return[_action, target];
		}
	}
}





