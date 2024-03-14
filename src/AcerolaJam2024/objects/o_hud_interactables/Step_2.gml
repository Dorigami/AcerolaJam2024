/// @description Insert description here
// You can write your code in this editor

x = global.i_camera.x;
y = global.i_camera.y + 0.8*global.i_camera.viewHeightHalf;

if(ds_stack_size(global.i_engine.menu_stack) == 0)
{
	if(image_alpha != 1) image_alpha = min(1, image_alpha+0.08);
} else {
	if(image_alpha != 0) image_alpha = 0;
}

controlsList[| 0].Update();
controlsList[| 1].Update();


