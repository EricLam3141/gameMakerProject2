/// @description Insert description here
// You can write your code in this editor

instance_deactivate_all(true)
units = [];
turn = 0;
unitRenderOrder = [];
unitTurnOrder = [];

//Creates enemys
for (var i = 0; i < array_length(enemies); i++) {
	enemyUnits[i] = instance_create_depth(x+250+(i*10), y+85+(i*20), depth-10, obj_battleUnitEnemy, enemies[i]);
	array_push(units, enemyUnits[i]);
}

//Creates party
for (var i = 0; i < array_length(global.party); i++) {
	partyUnits[i] = instance_create_depth(x+70+(i*10), y+70+(i*10), depth-10, obj_battleUnitPc, global.party[i]);
	array_push(units, partyUnits[i]);
}

//Shufflling turn order
unitTurnOrder = array_shuffle(units);

//Render order
RefreshRenderOrder = function()

{
	unitRenderOrder = [];
	array_copy(unitRenderOrder,0,units,0,array_length(units));
	array_sort(unitRenderOrder, function(_1,_2)
		{
			return _1.y - _2.y;
		});
}

RefreshRenderOrder();