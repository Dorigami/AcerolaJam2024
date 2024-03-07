/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(foraging_progress > 0)
{
	draw_healthbar(
		buildtimer_bbox[0],buildtimer_bbox[1],buildtimer_bbox[2],buildtimer_bbox[3]
		,100*foraging_progress/foraging_threshold,c_black,c_gray,c_gray,0,true,true);
}