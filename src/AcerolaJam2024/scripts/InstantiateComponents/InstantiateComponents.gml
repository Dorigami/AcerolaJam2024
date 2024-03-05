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
	fighter = new global.i_engine.Fighter(_health,_strength,_defense,_speed,_range,_xp,_basic,_active)
	fighter.owner = id;
	
	inventory = new global.i_engine.Inventory()
}