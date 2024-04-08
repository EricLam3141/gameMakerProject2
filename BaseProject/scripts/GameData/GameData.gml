
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
		sprites : { idle: spr_player_idle, attack: sLuluAttack, defend: spr_player_defend, down: sLuluDown},
		actions : []
	}
	,
	{
		name: "Kevin-Kun",
		hp: 18,
		hpMax: 44,
		mp: 20,
		mpMax: 30,
		strength: 4,
		sprites : { idle: spr_kevin, attack: sQuestyCast, cast: sQuestyCast, down: sQuestyDown},
		actions : []
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
		actions: [],
		xpValue : 15,
		AIscript : function()
		{
			//enemy turn ai goes here
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
		}
	}
}





