/// @description 

/*
	a 'type_string' must be passed to this object on creation in order for 
	components to be instantiated correctly
*/

// Inherit the parent event
event_inherited();

faction = FACTION_ENEMY;
//animation
spr_idle = asset_get_index("s_"+type_string+"_idle");
spr_move = asset_get_index("s_"+type_string+"_move");
spr_attack = asset_get_index("s_"+type_string+"_attack");
spr_death = asset_get_index("s_"+type_string+"_death");

//sound
sound_spawn = asset_get_index("snd_"+type_string+"_spawn") == -1 ? snd_empty: asset_get_index("snd_"+type_string+"_spawn");
sound_move = asset_get_index("snd_"+type_string+"_move") == -1 ? snd_empty: asset_get_index("snd_"+type_string+"_move");
sound_attack = asset_get_index("snd_"+type_string+"_attack") == -1 ? snd_empty: asset_get_index("snd_"+type_string+"_attack");
sound_death = asset_get_index("snd_"+type_string+"_death") == -1 ? snd_empty: asset_get_index("snd_"+type_string+"_death");

switch(type_string)
{
	case "gen_enemy":
		var _s = {
			hp : 3,	str : 1, def : 1,
			spd : 2, rng : 0, xp : 100,
			bhvr : DEFENSIVE,
		}
		break;
	default:
		var _s = {
			hp : 1,	str : 1, def : 1,
			spd : 1, rng : 1, xp : 1,
			bhvr : PASSIVE,
		}
		break;
}

InstantiateEnemyComponents(_s.hp,_s.str,_s.def,_s.spd,_s.rng,_s.xp,_s.bhvr);
