function SpawnBush(_threshold){
	var _width = global.i_hex_grid.hexgrid_width_max;
	var _height = global.i_hex_grid.hexgrid_height_max;
	// var _noise = generate_noise_grid(_width, _height);
	var _noise = ds_grid_create(_width, _height);
	circular_sum_noise_grid(_noise);

	// remove existing bushes
	with(oBush) instance_destroy();
	
	// place a bush object on any node where the noise value is below the threshold
	for(var i=0;i<_width;i++){
	for(var j=0;j<_height;j++){
		if(_noise[# i, j] < _threshold)
		{   // get position and enabled status of the target node
			var _hex = hex_xy_to_qr(vect2(i,j));
			with(global.i_hex_grid){ 
				var _pos = hex_to_pixel(_hex,true); 
				var _enabled = hex_is_enabled(_hex);
			}
			// place the bush in playspace given the target node is enabled
			if(_enabled){
				with(instance_create_layer(_pos[1], _pos[2], "Instances", oBush)){
					xTo = _pos[1]; yTo = _pos[2]
					position = _pos; 
				}
			}
		}
	}}
	ds_grid_destroy(_noise);
}