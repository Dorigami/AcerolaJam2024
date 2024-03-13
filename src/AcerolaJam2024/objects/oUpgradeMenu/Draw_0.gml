/// @description 

// draw the background fade
draw_sprite_ext(s_bg_fade,0,xTo,yTo,1.5,1.5,0,c_white,global.bg_fade);

// draw the base of the menu
var _x = x-menu_half_w;
var _y = y-menu_half_h;
draw_sprite_ext(menu_9s, 0, _x, _y,menu_xscale,menu_yscale,0,c_white,image_alpha);
draw_sprite(sUpgradeMenuButtonPlacement,0,_x,_y);

if(time_source_get_state(ts_progression_buy) == time_source_state_active)
{
	var btn = controlsList[| progression_clicked_index];
	var _x = btn.xTrue;
	var _y = btn.yTrue-20;
	var _w = 50;
	var _h = 10;
	if(!is_undefined(btn))
	{
		draw_healthbar(_x,_y,_x+_w,_y-_h,progression_buy_progress,c_black,c_ltgrey,c_ltgrey,0,true,true);
	}
}

// Inherit the parent event
event_inherited();

