/// @description 

x = global.i_camera.x;
y = global.i_camera.y - 0.9*global.i_camera.viewHeightHalf;

if(ds_stack_size(global.i_engine.menu_stack) == 0)
{
	if(image_alpha != 1) image_alpha = min(1, image_alpha+0.08);
} else {
	if(image_alpha != 0) image_alpha = 0;
}

with(oLevelManager)
{
	// get the time string from the level manager
	other.time_string = timer_minutes_string + ":" + timer_seconds_string; // + "." + timer_milliseconds_string;
}