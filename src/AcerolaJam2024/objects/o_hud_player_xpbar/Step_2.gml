/// @description 

bbox[0] = camera_get_view_x(view_camera[0]) + x;
bbox[1] = camera_get_view_y(view_camera[0]) + y;
bbox[2] = bbox[0]+width;
bbox[3] = bbox[1]+height;

var _xp = global.i_player.fighter.xp;
if(p_xp != _xp)
{
	var _diff = _xp - p_xp;
	if(abs(_diff) <= 1)
	{
		p_xp = _xp;
	} else {
		p_xp += 0.05*(_diff);
	}
}