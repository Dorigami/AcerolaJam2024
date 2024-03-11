/// @description 

// create menu functions
UpgradeMenuFunctions();


// Inherit the parent event
event_inherited();

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();


xTo = global.i_camera.x;
yTo = global.i_camera.y;
x = xTo;
y = yTo + global.i_camera.viewHeightHalf;

gui = false;
closable = true;

// Title
var _ind = -1
LabelAdd(0,0,id,++_ind,"title",undefined,"UPGRADE MENU");
ButtonAdd(0,0,id,++_ind,"test button",s_menu_button,undefined,"test",undefined,AddFlowers,[0,0,0,0]);

// flower 1 ui elements
LabelAdd(0,0,id,++_ind,"f1_icon")
ButtonAdd(0,0,id,++_ind,"f1_increase",s_menu_plus,undefined,"",undefined,AddFlowers,[1,0,0,0]);
ButtonAdd(0,0,id,++_ind,"f1_decrease",s_menu_minus,undefined,"",undefined,AddFlowers,[-1,0,0,0]);
// flower 2 ui elements
LabelAdd(0,0,id,++_ind,"f1_icon")
ButtonAdd(0,0,id,++_ind,"f1_increase",s_menu_plus,undefined,"",undefined,AddFlowers,[1,0,0,0]);
ButtonAdd(0,0,id,++_ind,"f1_decrease",s_menu_minus,undefined,"",undefined,AddFlowers,[-1,0,0,0]);
// flower 3 ui elements
LabelAdd(0,0,id,++_ind,"f1_icon")
ButtonAdd(0,0,id,++_ind,"f1_increase",s_menu_plus,undefined,"",undefined,AddFlowers,[1,0,0,0]);
ButtonAdd(0,0,id,++_ind,"f1_decrease",s_menu_minus,undefined,"",undefined,AddFlowers,[-1,0,0,0]);
// flower 4 ui elements
LabelAdd(0,0,id,++_ind,"f1_icon")
ButtonAdd(0,0,id,++_ind,"f1_increase",s_menu_plus,undefined,"",undefined,AddFlowers,[1,0,0,0]);
ButtonAdd(0,0,id,++_ind,"f1_decrease",s_menu_minus,undefined,"",undefined,AddFlowers,[-1,0,0,0]);
// crafting commit button
ButtonAdd(0,0,id,++_ind,"commit craft");

show_debug_message("menu create");

	hp_cap = 200;
	strength_cap = 10;
	defense_cap = 10;
	speed_cap = 10;
	range_cap = 2;
