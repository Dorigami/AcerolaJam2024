/// @description 

if(!instance_exists(creator)) || (image_alpha == 0) instance_destroy();

if(alarm[0] == -1) image_alpha = max(0,image_alpha-0.05);
