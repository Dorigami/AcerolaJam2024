function ReturnToStartMenu(){
	room_start_init_player_entity();
	room_start_init_camera();
	with(oBush) instance_destroy();
	with(oEnemy) instance_destroy();
	with(oDeath) instance_destroy();
	if(global.game_state == GameStates.PAUSE) unpause_game();
	global.game_state = GameStates.PLAY;
	global.player_dead = false;
	with(oLevelManager) LevelManagerInit();
	instance_create_depth(0,0,UPPERDEPTH,oStartMenu);
}