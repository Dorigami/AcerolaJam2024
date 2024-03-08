/*
    the input handlers need to run inside of the engine, or else the variable references will be out of scope
*/
double_click_time = 3;
double_click_timer = -1;

//--// MOUSE HANDLERS //--//
function handle_mouse(game_state){
	switch(global.game_state)
	{
		case GameStates.MAIN_MENU:
			return handle_default_mouse();
			break;
		case GameStates.PLAY:
			return handle_default_mouse();
			break;
		case GameStates.PAUSE:
			return handle_default_mouse();
			break;
		case GameStates.VICTORY:
			return handle_default_mouse();
			break;
		case GameStates.DEFEAT:
			return handle_default_mouse();
			break;
	}
}

function handle_default_mouse(){
	// left mouse
	if(mouse_check_button_released(mb_left)){} 
    else if mouse_check_button_pressed(mb_left){}

	// right mouse (allow player to move)
	if(mouse_check_button_released(mb_right)){
		if(!array_equals(global.i_hex_grid.mouse_hex_coord, global.i_player.hex))
		{
			return { player_move_command : new Command(
								"player_move_command", 
								point_direction(global.i_player.x, global.i_player.y,mouse_x,mouse_y),
								0, 0) }
		}
	} else if(mouse_check_button_pressed(mb_right)){}

	// middle mouse / wheel
	if(mouse_check_button_pressed(mb_middle)){
        return {}
    } else if(mouse_wheel_up()){
        if(ds_stack_size(menu_stack) > 1)
        {
            return {}
        } else {
            return { camera_zoomin : new Command("camera_zoomin",true,0,0) }
        }
    } else if(mouse_wheel_down()){
        if(ds_stack_size(menu_stack) > 1){
            return {}
        } else {
            return { camera_zoomout : new Command("camera_zoomout",true,0,0) }
        }
    } 
    return {}
}

//--// KEYBOARD HANDLERS //--//

function handle_keys(game_state){
	switch(game_state)
	{
		case GameStates.MAIN_MENU:
			return handle_play_keys();
			break;
		case GameStates.PLAY:
			return handle_play_keys();
			break;
		case GameStates.PAUSE:
			return handle_pause_keys();
			break;
		case GameStates.VICTORY:
			return handle_play_keys();
			break;
		case GameStates.DEFEAT:
			return handle_play_keys();
			break;
	}
}

function handle_play_keys(){
	// start the level 
	if(keyboard_check_pressed(vk_enter))
	{
		return {start_level : new Command("start_level",true,0,0)}
	}
    // pause
    if(keyboard_check_pressed(vk_escape))
    {
		return {escape : new Command("escape",true,0,0)}
	}
    // camera pan
    var _move = [keyboard_check(ord("D")) - keyboard_check(ord("A")), keyboard_check(ord("S")) - keyboard_check(ord("W"))];
    var _fast_pan = keyboard_check(vk_shift);
    if(_move[0] != 0) || (_move[1] != 0) 
    {
        if(_fast_pan){
            return {camera_fast_pan : new Command("camera_fast_pan",_move,0,0)};
        } else {
            return {camera_pan : new Command("camera_pan",_move,0,0)};
        }
    }
    return {}
}
function handle_pause_keys(){
    // unpause
    if(keyboard_check_pressed(vk_escape))
    {
		return {escape : new Command("escape",true,0,0)}
	}
}
