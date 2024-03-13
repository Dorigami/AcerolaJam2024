function InstantiatePlayerComponents(_health,_strength,_defense,_speed,_range,_xp){
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
	fighter = new global.i_engine.Fighter(_health,_strength,_defense,_speed,_range,_xp,_basic,_active,id);
	ai = new global.i_engine.PlayerAI(DEFENSIVE, id);
	inventory = new global.i_engine.Inventory(id);

// upgrade variables
	total_upgrade_count = 0;
	hp_upgrades = 0;
	strength_upgrades = 0;
	defense_upgrades = 0;
	speed_upgrades = 0;
	range_upgrades = 0;
	
	hp_upgrades_cap = 0;
	strength_upgrades_cap = 0;
	defense_upgrades_cap = 0;
	speed_upgrades_cap = 0;
	range_upgrades_cap = 0;
	
	hp_upgrades_val = 10;
	strength_upgrades_val = 1;
	defense_upgrades_val = 1;
	speed_upgrades_val = 1;
	range_upgrades_val = 1;
	progression = {
		t1_unlock : [true, -1], 
		t1_1 : [false, [1,1]],
		t1_2 : [false, [1,1]],
		t2_unlock : [false, [1,1]],
		t2_1 : [false, [1,1,1]],
		t2_2 : [false, [1,1,1]],
		t2_3 : [false, [1,1,1]],
		t2_4 : [false, [1,1,1]],
		t3_unlock : [false, [1,1,1]],
		t3_1 : [false, [1,1,1,1]],
		t3_2 : [false, [1,1,1,1]],
		t3_3 : [false, [1,1,1,1]],
		t3_4 : [false, [1,1,1,1]],
		t3_5 : [false, [1,1,1,1]],
		t3_6 : [false, [1,1,1,1]],
		t4_unlock : [false, [1,1,1,1]],
		t4_1 : [false, [1,1,1,1]],
		t4_2 : [false, [1,1,1,1]],
		t5_unlock : [false, [3,3,3,3,3]],
	}
}
function InstantiateBushComponents(_health,_strength,_defense,_speed,_range,_xp){
	// determine the attacks
	var _basic = {
		name : "Forage",
		cooldown : 2,       // delay, in seconds, between attacks
		move_penalty : 0.8, // move speed reduced during attack
		duration : 0.5,     // movement is reduced, other attacks cannot be done during this time
		damage_point : 10,  // damage is dealt after this step count
		damage_value : 1,
		damage_obj : o_player_basic 
	}
	var _active = {
		name : "Skill Unknown",
		cooldown : 5, // delay, in seconds, between attacks
		move_penalty : 0.8, // move speed reduced during attack
		duration : 1.5, // movement is reduced, other attacks cannot be done during this time
		damage_point : 10, // damage is dealt after this step count
		damage_value : 1,
		damage_obj : o_player_active 
	}
	fighter = new global.i_engine.Fighter(_health,_strength,_defense,_speed,_range,_xp,_basic,_active,id);

	// run update script on object
	Update();
}
function InstantiateEnemyComponents(_health,_strength,_defense,_speed,_range,_xp,_behavior){
	var _struct = {}
	// determine the attacks
	var _basic = {
		name : "Thrust Spear",
		cooldown : 2.5,       // delay, in seconds, between attacks
		move_penalty : 0.8, // move speed reduced during attack
		duration : 2.0,     // movement is reduced, other attacks cannot be done during this time
		damage_point : 10,  // damage is dealt after this step count
		damage_value : 1,
		damage_obj : o_player_basic 
	}
	var _active = {
		name : "Throw Spear",
		cooldown : 5, // delay, in seconds, between attacks
		move_penalty : 0.8, // move speed reduced during attack
		duration : 2.0, // movement is reduced, other attacks cannot be done during this time
		damage_point : 10, // damage is dealt after this step count
		damage_value : 1,
		damage_obj : o_player_active 
	}

	fighter = new global.i_engine.Fighter(_health,_strength,_defense,_speed,_range,_xp,_basic,_active,id);
	ai = new global.i_engine.EnemyAI(_behavior, id);
	
	// run update script on object
	Update();
}