/// @description 
StartMenuFunctions();

alarm[0] = FRAME_RATE;

// Inherit the parent event
event_inherited();

// general variables
xTo = global.i_camera.x;
yTo = global.i_camera.y;
x = xTo;
y = yTo + 2*global.i_camera.viewHeightHalf;
show_tutorial = false;
tut_9s = s_upgrade_menu_9s;
tut_size = vect2(230,300);
tut_half_w = tut_size[1] div 2;
tut_half_h = tut_size[2] div 2;
tut_xscale = tut_size[1] / sprite_get_width(s_upgrade_menu_9s);
tut_yscale = tut_size[2] / sprite_get_height(s_upgrade_menu_9s);
tut_true_pos = vect2(xTo+196,yTo);
tut_false_pos = vect2(xTo+196,yTo+340);
tut_pos = tut_false_pos;
tut = "     --------- CONTROLS ---------\nIN-GAME:\n[mouse_left] = target a bush or creature\n[mouse-right] = move player\nIN-MENU:\n[mouse-left] = interact\n";
tut += "     --------- SCENARIO ---------\n  The goal of this game is too collect magic flowers for your research to synthisize the Elixer of Life.  Be wary of the wildlife, some are friendlier than others.\n";
tut += "  Targeting a creature will force the player to chase/attack that target, while targeting a bush will force the player to move to it and collect flowers.  There will be buttons at the bottom of the screen to switch the player between \'peaceful\' & \'aggressive\' behaviors.  Play around with them to see what they do!"
// set scaling
menu_9s = s_upgrade_menu_9s;
menu_size = vect2(160,200);
menu_half_w = menu_size[1] div 2;
menu_half_h = menu_size[2] div 2;
menu_xscale = menu_size[1] / sprite_get_width(s_upgrade_menu_9s);
menu_yscale = menu_size[2] / sprite_get_height(s_upgrade_menu_9s);

var _ind = -1;
var _title = "ALCHEMIC ABBERATIONS";
LabelAdd(-58,-70,id,++_ind,"title",undefined,_title);
// Start Game Button
ButtonAdd(-sprite_get_width(s_startmenu_start) div 2, -14, id, ++_ind, "start", s_startmenu_start,,"",,Start,[]);
// Controls/Tutorial Button
ButtonAdd(-sprite_get_width(s_startmenu_tutorial) div 2, 20, id, ++_ind, "start", s_startmenu_tutorial,,"",,Tutorial,[]);
// Quit Game Button
ButtonAdd(-sprite_get_width(s_startmenu_quit) div 2, 54, id, ++_ind, "start", s_startmenu_quit,,"",,Quit,[]);

SoundCommand(snd_title_music,0,0);
