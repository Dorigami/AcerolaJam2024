/// @description 

// draw the background fade
draw_sprite_ext(s_bg_fade,0,xTo,yTo,1.5,1.5,0,c_white,global.bg_fade);

// draw the base of the menu
var _x = x-menu_half_w;
var _y = y-menu_half_h;
draw_sprite_ext(menu_9s, 0, _x, _y,menu_xscale,menu_yscale,0,c_white,image_alpha);
draw_sprite(sUpgradeMenuButtonPlacement,0,_x,_y);

// Inherit the parent event
event_inherited();

