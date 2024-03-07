/// @description 

player_in_range = false;
foraging_progress = 0;
foraging_threshold = 60;
foraging_charges = 10;
foraging_probs = [1.0,0.6,0.4,0.2];
function CheckForPlayer(){
	player_in_range = ds_list_find_index(fighter.enemies_in_range, global.i_player) > -1;
}
function ConsumeForagingCharge(){
	foraging_charges--;
	foraging_progress = 0;
	foraging_threshold *= 1.1;
	var _rand = random(1);
	if(_rand < foraging_probs[3]){
		global.i_player.inventory.flower4++;
	} else if(_rand < foraging_probs[2]){
		global.i_player.inventory.flower3++;
	} else if(_rand < foraging_probs[1]){
		global.i_player.inventory.flower2++;
	} else {
		global.i_player.inventory.flower1++;
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
