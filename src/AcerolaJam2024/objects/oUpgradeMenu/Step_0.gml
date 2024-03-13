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

// check if any of the upgrade nodes is beeing held down by player
GetChargingStatus();
if(progression_charging)
{
	progression_charge_timer = min(progression_charge_timer++, progression_charge_time);
	if(progression_charge_timer == progression_charge_time)
}


// Inherit the parent event
event_inherited();

