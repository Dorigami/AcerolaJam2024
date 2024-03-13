/// @description 

x = global.i_camera.x;
y = global.i_camera.y - 0.9*global.i_camera.viewHeightHalf;


with(oLevelManager)
{
	// get the time string from the level manager
	other.time_string = timer_minutes_string + ":" + timer_seconds_string; // + "." + timer_milliseconds_string;
}