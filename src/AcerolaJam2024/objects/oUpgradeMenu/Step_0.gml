/// @description 

xTo = global.i_camera.x;
yTo = global.i_camera.y;

// pan into the center of camera
if(x != xTo) || (y != yTo)
{
	var _xdiff = xTo - x;
	var _ydiff = yTo - y;
	if(abs(_xdiff) <= 1) && (abs(_ydiff) <= 1){
		x = xTo; y = yTo;
	} else {
		x += 0.08*_xdiff; y += 0.08*_ydiff;
	}
}

// Inherit the parent event
event_inherited();

