/// @description 

xTo = global.i_camera.x;
yTo = global.i_camera.y;

// pan into the center of camera
if(x != xTo) || (y != yTo)
{
	var _xdiff = xTo - x;
	var _ydiff = yTo - y;
	if(abs(_xdiff) <= 1) && (abs(_ydiff) <= 1){
		x = xTo; y = yTo;
	} else {
		x += 0.08*_xdiff; y += 0.08*_ydiff;
	}
}

// check if any of the upgrade nodes is beeing held down by player
progression_clicked_index = GetFocusStatus();
if(progression_clicked_index > -1) && (mouse_check_button(mb_left)) && (controlsList[| progression_clicked_index].sprite == s_upgrade_node_available)
{	// start counting down as the mouse if being held
	if(time_source_get_state(ts_progression_buy) == time_source_state_initial) time_source_start(ts_progression_buy);
} else {
	// reset the time source when condition to buy is not met
	if(time_source_get_state(ts_progression_buy) != time_source_state_initial)
	{ 
		time_source_reset(ts_progression_buy) ;
		progression_buy_progress = 0;
	}
}
if(time_source_get_state(ts_progression_buy) == time_source_state_active)
{
	progression_buy_progress = 100*(1-time_source_get_time_remaining(ts_progression_buy)/time_source_get_period(ts_progression_buy));
} 


// Inherit the parent event
event_inherited();

