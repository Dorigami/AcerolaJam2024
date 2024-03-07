/// @description 

bbox[0] = camera_get_view_x(view_camera[0]) + x;
bbox[1] = camera_get_view_y(view_camera[0]) + y;
bbox[2] = bbox[0]+width;
bbox[3] = bbox[1]+height;

p_sanity = clamp(100*(global.i_player.fighter.sanity/global.i_player.fighter.sanity_max),0,100);
