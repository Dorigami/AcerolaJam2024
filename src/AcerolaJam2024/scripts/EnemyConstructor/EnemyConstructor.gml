// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyConstructor(_x,_y,_type_string){
	var _struct = {}
	// determine the attacks
	var _basic = {
		name : "Thrust Spear",
		cooldown : 2,       // delay, in seconds, between attacks
		move_penalty : 0.8, // move speed reduced during attack
		duration : 0.5,     // movement is reduced, other attacks cannot be done during this time
		damage_point : 10,  // damage is dealt after this step count
		damage_value : 1,
		damage_obj : o_player_basic 
	}
	var _active = {
		name : "Throw Spear",
		cooldown : 5, // delay, in seconds, between attacks
		move_penalty : 0.8, // move speed reduced during attack
		duration : 1.5, // movement is reduced, other attacks cannot be done during this time
		damage_point : 10, // damage is dealt after this step count
		damage_value : 1,
		damage_obj : o_player_active 
	}
	with(instance_create_depth(_x,_y,ENTITYDEPTH,oEnemy,_struct))
	{
		// set/ overwrite values based on the type_string
		type_string = _type_string;
		fighter = new global.i_engine.Fighter(3,1,1,1,0,10,_basic,_active,id);
		ai = new global.i_engine.EnemyAI(PASSIVE, id);
	}
}