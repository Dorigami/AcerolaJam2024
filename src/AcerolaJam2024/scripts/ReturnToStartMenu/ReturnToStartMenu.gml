function ReturnToStartMenu(){
	room_start_init_player_entity();
	room_start_init_camera();
	with(oBush) instance_destroy();
	with(oEnemy) instance_destroy();
	if(global.game_state == GameStates.PAUSE) unpause_game();
	with(oLevelManager) LevelManagerInit();
	instance_create_depth(0,0,UPPERDEPTH,oStartMenu);
}