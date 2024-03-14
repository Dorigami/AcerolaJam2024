/// @description 

// create menu functions
function Resume(){}
function Quit(){}


// Inherit the parent event
event_inherited();


xTo = global.i_camera.x;
yTo = global.i_camera.y;
x = xTo;
y = yTo + global.i_camera.viewHeightHalf;
show_pos = vect2(xTo,yTo);
hide_pos = vect2(xTo,yTo+1.5*global.i_camera.viewHeightHalf);

// set scaling
menu_9s = s_upgrade_menu_9s;
menu_size = vect2(200,200);
menu_half_w = menu_size[1] div 2;
menu_half_h = menu_size[2] div 2;
menu_xscale = menu_size[1] / sprite_get_width(s_upgrade_menu_9s);
menu_yscale = menu_size[2] / sprite_get_height(s_upgrade_menu_9s);

// transition vars
trans = false;
trans_type = IN;
trans_rate = 0.05;

// Title
pause_text = "------ PAUSE ------";
var _ind = -1;
// resume button
ButtonAdd(-60,0,id,++_ind,"resume",s_pause_resume,undefined,"",undefined,Resume,[]);
// quit Button
ButtonAdd(60,0,id,++_ind,"quit",s_pause_quit,undefined,"",undefined,Resume,[]);



