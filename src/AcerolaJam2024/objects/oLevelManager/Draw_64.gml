/// @description 

var _x = global.i_camera.viewWidthHalf;
var _y = 10;
draw_set_font(f_default_L);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
if(level_running)
{ 
	draw_text(_x,_y, timer_minutes_string + ":" + timer_seconds_string + "." + timer_milliseconds_string);
}
