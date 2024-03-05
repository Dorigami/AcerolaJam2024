/// @description 

// Inherit the parent event
event_inherited();

//animation
spr_idle = s_player_idle;
spr_move = s_player_move;
spr_attack = s_player_attack;
spr_death = s_player_death;

//sound
sound_spawn = snd_player_spawn;
sound_move = snd_player_move;
sound_attack = snd_empty;
sound_death = snd_player_death;

// determine the attacks
var _basic_attack = {
	name : "Thrust Spear",
	cooldown : 2,       // delay, in seconds, between attacks
	move_penalty : 0.8, // move speed reduced during attack
	duration : 0.5,     // movement is reduced, other attacks cannot be done during this time
	damage_point : 10,  // damage is dealt after this step count
	damage_value : 1,
	damage_obj : o_player_basic 
}
var _active_attack = {
	name : "Throw Spear",
	cooldown : 5, // delay, in seconds, between attacks
	move_penalty : 0.8, // move speed reduced during attack
	duration : 1.5, // movement is reduced, other attacks cannot be done during this time
	damage_point : 10, // damage is dealt after this step count
	damage_value : 1,
	damage_obj : o_player_active 
}

fighter = new global.i_engine.Fighter(
	10, // Health
	1, // Strength
	1, // Defense
	1, // Speed
	1, // Range
	_basic_attack, 
	_active_attack
);