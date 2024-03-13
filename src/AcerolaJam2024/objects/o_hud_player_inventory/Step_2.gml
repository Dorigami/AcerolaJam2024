/// @description 

bbox[0] = camera_get_view_x(view_camera[0]) + x;
bbox[1] = camera_get_view_y(view_camera[0]) + y;
bbox[2] = bbox[0]+width;
bbox[3] = bbox[1]+height;

inventory_string = "INVENTORY\n";
inventory_string += p_inventory.flower_names[0] + " = " + string(p_inventory.flower_counts[0]) + "\n";
if(p_inventory.flower_counts[1] != -1)
{
	inventory_string += p_inventory.flower_names[1] + " = " + string(p_inventory.flower_counts[1]) + "\n";
}
if(p_inventory.flower_counts[2] != -1)
{
	inventory_string += p_inventory.flower_names[2] + " = " + string(p_inventory.flower_counts[2]) + "\n";
}
if(p_inventory.flower_counts[3] != -1)
{
	inventory_string += p_inventory.flower_names[3] + " = " + string(p_inventory.flower_counts[3]) + "\n";
}
if(p_inventory.flower_counts[4] != -1)
{
	inventory_string += p_inventory.flower_names[4] + " = " + string(p_inventory.flower_counts[4]) + "\n";
}
