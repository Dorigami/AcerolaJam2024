/// @description 

draw_set_alpha(1);
draw_set_color(c_black);
draw_set_font(f_default_L);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(image_alpha);

// draw the background fade
draw_sprite_ext(s_bg_fade,1,xTo,yTo,1.5,1.5,0,c_white,0.5*image_alpha);

// draw the base of the menu
var _x = x-menu_half_w;
var _y = y-menu_half_h;
draw_sprite_ext(menu_9s, 0, _x, _y,menu_xscale,menu_yscale,0,c_white,image_alpha);


// show description for the upgrade
_x = x + 156;
_y = y-80;
draw_set_valign(fa_top);
draw_text(_x,_y,progression_focus_title);
draw_text_ext(_x,_y+18,progression_focus_text,10,126);

// Inherit the parent event
event_inherited();

