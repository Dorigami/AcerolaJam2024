PlayerAI = function(_behavior,_owner=noone) constructor{
	focus_target = noone;
	foraging_id = noone;
	behavior = _behavior;
	owner = _owner;
	static Update = function(){
		var _target = GetAutoAttackTarget();
		
		// only attack if the focus target is an enemy, 
		// or if player has been hurt by something and that something is in 
		
		// attack any enemy in range, but prioritize the attack command target
		if(_target != noone) 
		{
			with(owner.fighter)
			{
				// attack valid target
				if(attack_target != _target) attack_target = _target;
				if(attack_index == -1) && (basic_cooldown_timer <= 0)
				{
					owner.attack_direction = point_direction(owner.position[1], owner.position[2], _target.position[1], _target.position[2]);
					UseBasic();
				}
			}
		}
	}
	static GetAutoAttackTarget = function(){
		var _target = noone;
		switch(behavior)
		{
			case PASSIVE:
				// dont do checks when passive
				break;
			case DEFENSIVE:
				// player will only auto attack in retaliation
				with(owner.fighter)
				{
					if(retaliation_target != noone) 
						&& (instance_exists(retaliation_target))
						&& (ds_list_find_index(enemies_in_range, retaliation_target) > -1)
					{
						_target = retaliation_target;
					} else { retaliation_target = noone }
				}
				break;
			case AGGRESSIVE:
				// player will attack any enemy in range 
				with(owner.fighter)
				{
					// attack the current attack target, if possible
					if(attack_target != noone) 
						&& (instance_exists(attack_target))
						&& (ds_list_find_index(enemies_in_range, attack_target) > -1){
							_target = attack_target;
					} else { attack_target = noone }
					
					// if there is no attack target, attack nearest enemy if possible
					if(_target == noone)
					{
						// determine a target from enemies in range based on varying criteria
						for(var i=0;i<ds_list_size(enemies_in_range);i++)
						{
							_target = enemies_in_range[| i];
							// skip the target if it is undefined or doesn't exist
							if(is_undefined(_target)) || (instance_exists(_target)) continue;
							
							// target must be an enemy to be auto attacked
							if(_target.faction != FACTION_ENEMY) continue;
							
							// valid target found
							break;
						}
						// make sure this doesn't return 'undefined'
						if(is_undefined(_target)) { _target = noone; } 
					}
				}
				break;
		}
		return _target;
	}
	static Destroy = function(){
		
	}
}
EnemyAI = function(_behavior, _owner) constructor{
	focus_target = noone;
	foraging_id = noone;
	behavior = _behavior;
	owner = _owner;
	static Update = function(){
		var _target = noone;
		switch(behavior){
			case PASSIVE:
				break;
			case DEFENSIVE:
				_target = GetAutoAttackTarget();
				// only attack if the focus target is an enemy, 
				// or if player has been hurt by something and that something is in 
		
				// attack any enemy in range, but prioritize the attack command target
				if(_target != noone) 
				{
					with(owner.fighter)
					{
						// attack valid target
						if(attack_target != _target) attack_target = _target;
						if(attack_index == -1) && (basic_cooldown_timer <= 0)
						{
							owner.attack_direction = point_direction(owner.position[1], owner.position[2], _target.position[1], _target.position[2]);
							UseBasic();
						}
					}
				}
				break;
			case AGGRESSIVE:
				break;
		}
	}
	static GetAutoAttackTarget = function(){
		var _target = noone;
		var _valid = true;
		// dont do checks when passive
		if(behavior == PASSIVE) return noone;
		
		switch(behavior)
		{
			case DEFENSIVE:
				// player will only auto attack in retaliation
				with(owner.fighter)
				{
					if(retaliation_target != noone) 
						&& (instance_exists(retaliation_target))
						&& (ds_list_find_index(enemies_in_range, retaliation_target) > -1)
					{
						_target = retaliation_target;
					} else { retaliation_target = noone }
				}
				break;
			case AGGRESSIVE:
				// player will attack any enemy in range 
				with(owner.fighter)
				{
					// attack the current attack target, if possible
					if(attack_target != noone) 
						&& (instance_exists(attack_target))
						&& (ds_list_find_index(enemies_in_range, attack_target) > -1){
							_target = attack_target;
					} else { attack_target = noone }
					
					// if there is no attack target, attack nearest enemy if possible
					if(_target == noone)
					{
						// determine a target from enemies in range based on varying criteria
						for(var i=0;i<ds_list_size(enemies_in_range);i++)
						{
							_target = enemies_in_range[| i];
							// skip the target if it is undefined or doesn't exist
							if(is_undefined(_target)) || (instance_exists(_target)) continue;
							
							// target must be an enemy to be auto attacked
							if(_target.faction != FACTION_ENEMY) continue;
							
							// valid target found
							break;
						}
						// make sure this doesn't return 'undefined'
						if(is_undefined(_target)) { _target = noone; } 
					}
				}
				break;
		}
		return _target;
	}
	static Destroy = function(){
		
	}
}