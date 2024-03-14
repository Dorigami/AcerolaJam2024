function StartCountdownToLevelStart(_seconds, _level_time, _bush_time, _enemy_time){
	instance_create_depth(0,0,UPPERDEPTH,oLevelCountdown,{
		seconds : _seconds,
		level_time : _level_time,
		bush_time : _bush_time,
		enemy_time : _enemy_time
	});
}