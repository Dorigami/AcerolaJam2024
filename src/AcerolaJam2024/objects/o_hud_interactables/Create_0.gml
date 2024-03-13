/// @description 

function SetPlayerBehavior(_bhvr){
	with(global.i_player)
	{
		ai.behavior = _bhvr;
	}
	show_debug_message("player behavior set to: {0}", _bhvr);
}

// Inherit the parent event
event_inherited();
// immediately remove from menu stack
ds_stack_pop(global.i_engine.menu_stack);

var _ind = -1;
// foraging button (set player behavior to foraging)
ButtonAdd(-30,0,id,++_ind,"forage",s_hud_foraging,,"",,SetPlayerBehavior,[FORAGING]);
// fighting button (set player behavior to fighting)
ButtonAdd(30,0,id,++_ind,"forage",s_hud_foraging,,"",,SetPlayerBehavior,[AGGRESSIVE]);
