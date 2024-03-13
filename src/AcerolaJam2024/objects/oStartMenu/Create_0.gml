/// @description 

function Start(){
	with(oLevelManager){ LevelBegin(120,30,4) }
}
function Tutorial(){}
function QUIT(){
	game_end();
}

alarm[0] = FRAME_RATE;

// Inherit the parent event
event_inherited();

// general variables
xTo = global.i_camera.x;
yTo = global.i_camera.y;
x = xTo;
y = yTo + global.i_camera.viewHeightHalf;
show_tutorial = false;
tut_true_pos = vect2(0,0);
tut_false_pos = vect2(0,0);
tut_pos = tut_false_pos;
tut = ""
// set scaling
menu_9s = s_upgrade_menu_9s;
menu_size = vect2(480,336);
menu_half_w = menu_size[1] div 2;
menu_half_h = menu_size[2] div 2;
menu_xscale = menu_size[1] / sprite_get_width(s_upgrade_menu_9s);
menu_yscale = menu_size[2] / sprite_get_height(s_upgrade_menu_9s);

var _ind = -1;
LabelAdd(0,-50,id,++_ind,"title",undefined,"ALCHEMIC ABBERATIONS");
// Start Game Button
ButtonAdd(-sprite_get_width(s_startmenu_start) div 2, 0, id, ++_ind, "start", s_startmenu_start,,"",,)
// Controls/Tutorial Button
// Quit Game Button