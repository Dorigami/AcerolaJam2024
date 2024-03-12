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

// set scaling
menu_9s = s_upgrade_menu_9s;
menu_size = vect2(480,336);
menu_half_w = menu_size[1] div 2;
menu_half_h = menu_size[2] div 2;
menu_xscale = menu_size[1] / sprite_get_width(s_upgrade_menu_9s);
menu_yscale = menu_size[2] / sprite_get_height(s_upgrade_menu_9s);

// Title
var _ind = -1
LabelAdd(0,0,id,++_ind,"title",undefined,"UPGRADE MENU");




// nodes of the upgrade tree
var _pos = vect2(0,0);
var _name = "";
for(var i=0;i<19;i++)
{
	switch(i)
	{
		// tier 1 upgrades
		case 0: _pos = vect2(-97,113); _name = "t1_unlock"; break;
		case 1: _pos = vect2(-152,93); _name = "t1_1"; break;
		case 2: _pos = vect2(-42,93); _name = "t1_2"; break;
		// tier 2 upgrades
		case 3: _pos = vect2(-97,51); _name = "t2_unlock"; break;
		case 4: _pos = vect2(-192,31); _name = "t2_1"; break;
		case 5: _pos = vect2(-152,31); _name = "t2_2"; break;
		case 6: _pos = vect2(-42,31); _name = "t2_3"; break;
		case 7: _pos = vect2(-2,31); _name = "t2_4"; break;
		// tier 3 upgrades
		case 8: _pos = vect2(-97,-12); _name = "t3_unlock"; break;
		case 9: _pos = vect2(-232,-32); _name = "t3_1"; break;
		case 10: _pos = vect2(-192,-32); _name = "t3_2"; break;
		case 11: _pos = vect2(-152,-32); _name = "t3_3"; break;
		case 12: _pos = vect2(-42,-32); _name = "t3_4"; break;
		case 13: _pos = vect2(-2,-32); _name = "t3_5"; break;
		case 14: _pos = vect2(38,-32); _name = "t3_6"; break;
		// tier 4 upgrades
		case 15: _pos = vect2(-97,-73); _name = "t4_unlock"; break;
		case 16: _pos = vect2(-152,-93); _name = "t4_1"; break;
		case 17: _pos = vect2(-42,-93); _name = "t4_2"; break;
		// tier 5 upgrade
		case 18: _pos = vect2(-97,-134); _name = "t5_unlock"; break;
	}
	ButtonAdd(_pos[1], _pos[2],id,++_ind,_name,s_upgrade_node,undefined,"",undefined,AddFlowers,[1,1,1,1]);
}


