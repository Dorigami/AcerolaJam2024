/// @description run game

//--// get inputs
mouse_action = handle_mouse(global.game_state);
action = handle_keys(global.game_state);

//--// parse inputs

escape = action[$ "escape"];
start_level = action[$ "start_level"];
player_move_command = mouse_action[$ "player_move_command"];
camera_pan = action[$ "camera_pan"];
camera_fast_pan = action[$ "camera_fast_pan"];
camera_zoomout = mouse_action[$ "camera_zoomout"];
camera_zoomin = mouse_action[$ "camera_zoomin"];

//--// execute inputs
if(!is_undefined(camera_pan)){
	var _val = other.camera_pan.value;
	with(global.i_camera)
	{
		var _vect = vect2(_val[0], _val[1]);
		var _vect = vect_multr(vect_norm(_vect), spd);
		xTo += _vect[1];
		yTo += _vect[2];
	}
} else if(!is_undefined(camera_fast_pan)){
	var _val = other.camera_fast_pan.value;
	with(global.i_camera)
	{
		var _vect = vect2(_val[0], _val[1]);
		var _vect = vect_multr(vect_norm(_vect), spdFast);
		xTo += _vect[1];
		yTo += _vect[2];
	}
}
if(!is_undefined(player_move_command)){
	var _oldhex = global.i_player.hex;
	var _newhex = hex_get_neighbor(_oldhex, player_move_command.value);
	if(hex_is_enabled(_newhex) && (!array_equals(_oldhex, _newhex))){
		var _point = hex_to_pixel(_newhex, true);
		global.i_player.xTo = _point[1];
		global.i_player.yTo = _point[2];
	}
	show_debug_message("move command: {0} | old: {1} | new: {2}", player_move_command, _oldhex, _newhex);
}
var _zoom = !is_undefined(camera_zoomout) + 2*!is_undefined(camera_zoomin);
if(_zoom > 0)
{
	if(alarm[1] == -1)
	{
		alarm[1] = zoom_delay_time;
		if(_zoom == 1){
			view_zoom = view_zoom == 0.5 ? 1 : 2; // zoom out
		} else {
			view_zoom = view_zoom == 2 ? 1 : 0.5; // zoom in
		}
		with(global.i_camera)
		{
			camera_set_view_size(cam, global.i_engine.idealWidth*global.i_engine.view_zoom, global.i_engine.idealHeight*global.i_engine.view_zoom);
			viewWidthHalf = round(0.5*camera_get_view_width(cam));
			viewHeightHalf = round(0.5*camera_get_view_height(cam));	
			camera_set_view_pos(cam, x-viewWidthHalf, y-viewHeightHalf);
		}
	}
}
if(!is_undefined(start_level)){
	with(oLevelManager)
	{
		LevelBegin(100000);
	}
}	
if(!is_undefined(escape)){
	show_debug_message("ESCAPE ACTION")
	switch(global.game_state)
	{
		default:
			if(ds_stack_size(menu_stack) == 0)
			{
				if(global.game_state != GameStates.PAUSE)
				{
					// pause the game
					show_debug_message("Pause Game");
					global.game_state_previous = global.game_state;
					global.game_state = GameStates.PAUSE;
					with(oLevelManager)
					{
						LevelPause();
					}
				} else {
					// unpause the game
					show_debug_message("Pause Game");
					global.game_state = global.game_state_previous;
					with(oLevelManager)
					{
						LevelUnpause();	
					}	
				}
			} else {
				// remove menu off of the stack
				show_debug_message("Exit Current Menu");
				with(ds_stack_pop(menu_stack)) instance_destroy();
			}
			break;
	}
}

// game update loop
if(global.game_state != GameStates.PAUSE)
{
	with(pEntity)
	{ // detemine whether the entity should be drawn or not
		EntityVisibility();
		
		// update fighters (this mainly handles attack cooldowns)
		if(!is_undefined(fighter)) && (global.game_state != GameStates.VICTORY) fighter.Update();

		// perform ai actions
		if(!is_undefined(ai)) ai.Update();
		
		// do the general update
		Update();
	}
	
	// refresh enemies_in_range for all fighters
	if(recalc_enemies_in_range)
	{
		recalc_enemies_in_range = false;
		with(pEntity)
		{
			if(!is_undefined(fighter)) fighter.FindEnemies();
		}
	}
}
