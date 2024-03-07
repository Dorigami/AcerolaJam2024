/// @description 

player_in_range = false;
function CheckForPlayer(){
	player_in_range = false;
	if(ds_list_find_index(fighter.enemies_in_range, global.i_player) > -1)
	{
		
	}
}

// Inherit the parent event
event_inherited();

faction = FACTION_NEUTRAL;
//animation
spr_idle = s_bush_idle;
spr_move = s_bush_move;
spr_attack = s_bush_attack;
spr_death = s_bush_death;

//sound
sound_spawn = snd_bush_spawn;
sound_move = snd_bush_move;
sound_attack = snd_empty;
sound_death = snd_bush_death;

InstantiateBushComponents(10,1,1,0,0,10);
