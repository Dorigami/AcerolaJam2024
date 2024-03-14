/// @description Insert description here
// You can write your code in this editor

x = camera_get_view_x(view_camera[0]) + xstart;
y = camera_get_view_y(view_camera[0]) + ystart;

if(ds_stack_size(global.i_engine.menu_stack) == 0)
{
	if(image_alpha != 1) image_alpha = min(1, image_alpha+0.08);
} else {
	if(image_alpha != 0) image_alpha = 0;
}

var _btnpos = vect2(controlsList[| 2].x, controlsList[| 2].y);
var _pos = finish_hidepos;
if(time_source_started) && (time_source_complete){ _pos = finish_showpos }

_btnpos = vect_add(_btnpos, vect_multr(vect_subtract(_pos,_btnpos),0.1));

controlsList[| 2].x = _btnpos[1];
controlsList[| 2].y = _btnpos[2];

controlsList[| 0].Update();
controlsList[| 1].Update();
controlsList[| 2].Update();
