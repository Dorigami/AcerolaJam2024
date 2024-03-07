function TimedBushPlacement(){
	show_debug_message("timed bush placement");
}

function TimedEnemyPlacement(){
	show_debug_message("timed enemy placement");
}

function LevelBegin(_level_time=120, _bush_interval=20, _enemy_interval=15){
	with(oLevelManager)
	{
		if(!level_begin)
		{
			// reconfigure the time sources
			time_source_reconfigure(ts_level_timer,_level_time,time_source_units_seconds,LevelComplete,[],1);
			time_source_reconfigure(ts_bush_timer,_bush_interval,time_source_units_seconds,TimedBushPlacement,[],1);
			time_source_reconfigure(ts_enemy_timer,_enemy_interval,time_source_units_seconds,TimedEnemyPlacement,[],1);
			// set parameters
			level_index++;
			level_begin = true;
			level_running = true;
		
			// place bushes and inital enemies
			SpawnBush(0.1);
		
			time_source_start(ts_level_timer)
			time_source_start(ts_bush_timer);
			time_source_start(ts_enemy_timer);
		}
	}
}

function LevelPause(){
	with(oLevelManager)
	{
		level_running = false;
	
		time_source_pause(ts_level_timer);
		time_source_pause(ts_bush_timer);
		time_source_pause(ts_enemy_timer);
	}
}
function LevelUnpause(){
	with(oLevelManager)
	{
		level_running = true;

		time_source_resume(ts_level_timer);
		time_source_resume(ts_bush_timer);
		time_source_resume(ts_enemy_timer);
	}
}

function LevelComplete(){
	with(oLevelManager)
	{
		level_begin = false;
		level_running = false;
		timer_minutes_string = "00";
		timer_seconds_string = "00";
		timer_milliseconds_string = "00";
		
		time_source_stop(ts_bush_timer);
		time_source_stop(ts_enemy_timer);
	}
}
