/// @description 

if(room == rGame)
{
	room_start_init_playspace();
	room_start_init_player_entity();
	room_start_init_camera();
	room_start_init_hud();
	
	// start music
	var _song = choose(The_Verdant_Grove_LOOP, Ludum_Dare_28___Track_4, Pixel_1, Pixel_2,Pixel_3,Pixel_4,Pixel_5,Pixel_6,Pixel_7,Pixel_8,Pixel_9,Pixel_10,Pixel_11,Pixel_12);
	SoundCommand(_song, 0, 0);
}
