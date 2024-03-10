/// @description 

// pan into the center
var _cx = global.i_camera.x;
var _cy = global.i_camera.y;
if(x != _cx) && (y != _cy)
{
	var _xdiff = _cx - x;
	var _ydiff = _cy - y;
	if(_xdiff <= 1) && (_ydiff <= 1){
		x = _cx; y = _cy;
	} else {
		x += 0.1*_cx; y += 0.1*_cy;
	}
}

// Inherit the parent event
event_inherited();

