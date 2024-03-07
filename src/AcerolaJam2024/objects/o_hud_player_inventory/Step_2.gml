/// @description 

bbox[0] = camera_get_view_x(view_camera[0]) + x;
bbox[1] = camera_get_view_y(view_camera[0]) + y;
bbox[2] = bbox[0]+width;
bbox[3] = bbox[1]+height;

inventory_string = "INVENTORY\n";
inventory_string += p_inventory.flower1_name + " = " + string(p_inventory.flower1) + "\n";
inventory_string += p_inventory.flower2_name + " = " + string(p_inventory.flower2) + "\n";
inventory_string += p_inventory.flower3_name + " = " + string(p_inventory.flower3) + "\n";
inventory_string += p_inventory.flower4_name + " = " + string(p_inventory.flower4) + "\n";

