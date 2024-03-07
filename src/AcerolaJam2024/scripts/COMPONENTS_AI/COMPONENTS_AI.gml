PlayerAI = function(_behavior,_owner=noone) constructor{
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
		_target = GetAttackTarget();
		// only attack if the focus target is an enemy, 
		// or if player has been hurt by something and that something is in 
		
		// attack any enemy in range, but prioritize the attack command target
		if(_target != noone) 
		{
			// attack valid target
			if(attack_target != _target) attack_target = _target;
			if(attack_index == -1) && (basic_cooldown_timer <= 0)
			{
				owner.attack_direction = point_direction(owner.position[1], owner.position[2], _target.position[1], _target.position[2]);
				UseBasic();
			}
		}
		break;
	case AGGRESSIVE:
		break;
}
		// if there is no command, check if entity is a fighter and get first enemy in range
		if(!is_undefined(owner.fighter)) && (owner.fighter.basic_attack != -1)
		{
			// resolve fighter behavior
			with(owner.fighter)
			{
				// attack the current attack target, if possible
				if(attack_target != noone) && (instance_exists(attack_target))
				{
					// check if enemy is still in range
					if(ds_list_find_index(enemies_in_range, attack_target) == -1)
					{
						attack_target = noone;
					} else {
						_target = attack_target;
					}
				} else {
					attack_target = noone;
				}
				// if there is no attack target, attack nearest enemy
				if(_target == noone)
				{
					_target = enemies_in_range[| 0];
					if(is_undefined(_target))
					{
						_target = noone;
					} else if(!instance_exists(_target)) {
						_target = noone;
						ds_list_delete(enemies_in_range, 0);
					}
				}

				// attack any enemy in range, but prioritize the attack command target
				if(_target != noone) 
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
	}
	static GetAttackTarget = function(){
		var _target = noone;
		// resolve fighter behavior
		with(owner.fighter)
		{
			// attack the current attack target, if possible
			if(attack_target != noone) && (instance_exists(attack_target))
			{
				// check if enemy is still in range
				if(ds_list_find_index(enemies_in_range, attack_target) == -1)
				{
					attack_target = noone;
				} else {
					_target = attack_target;
				}
			} else {
				attack_target = noone;
			}
			// if there is no attack target, attack nearest enemy
			if(_target == noone)
			{
				_target = enemies_in_range[| 0];
				if(is_undefined(_target))
				{
					_target = noone;
				} else if(!instance_exists(_target)) {
					_target = noone;
					ds_list_delete(enemies_in_range, 0);
				}
			}
		}
		return _target;
	}
	static Destroy = function(){
		
	}
}
EnemyAI = function(_behavior, _owner) constructor{

}