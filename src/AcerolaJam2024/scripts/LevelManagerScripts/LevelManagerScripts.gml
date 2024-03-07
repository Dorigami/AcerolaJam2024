function TimedBushPlacement(){
	show_debug_message("timed bush placement");
}

function TimedEnemyPlacement(){
	show_debug_message("timed enemy placement");
}

function LevelBegin(_duration){
	with(oLevelManager)
	{
		if(!level_begin)
		{
			level_index++;
			// set parameters
			level_begin = true;
			level_running = true;
			level_time_duration = _duration;
			level_time_elapsed = 0;
			level_time_start = current_time;
		
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
		level_time_elapsed += current_time - level_time_start;
		level_time_paused = current_time;
	
		time_source_pause(ts_bush_timer);
		time_source_pause(ts_enemy_timer);
	}
}
function LevelUnpause(){
	with(oLevelManager)
	{
		level_running = true;
		level_time_start = current_time;

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
