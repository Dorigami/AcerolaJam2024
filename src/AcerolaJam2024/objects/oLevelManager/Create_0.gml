/// @description 

function TimedBushPlacement(){
	show_debug_message("timed bush placement");
}
function TimedEnemyPlacement(){
	show_debug_message("timed enemy placement");
}

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

timer_pos = vect2(0.5*gui_w,10);

bush_timer = 20;
enemy_timer = 8;
ts_bush_spawn = time_source_create(time_source_global,bush_timer,time_source_units_seconds,TimedBushPlacement,[],-1);
ts_enemy_spawn = time_source_create(time_source_global,enemy_timer,time_source_units_seconds,TimedEnemyPlacement,[],-1);

level_index = 0; // -1 means that the game has not begun yet
level_begin = false;
level_running = false;
level_time_duration = 0;
level_time_elapsed = 0;
level_time_start = 0;
level_time_paused = 0;
level_time_end = 0;

timer_minutes_string = "00";
timer_seconds_string = "00";
timer_milliseconds_string = "00";

function LevelBegin(_duration){
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
		
		time_source_start(ts_bush_spawn);
		time_source_start(ts_enemy_spawn);
	}
}

function LevelPause(){
	level_running = false;
	level_time_elapsed += current_time - level_time_start;
	level_time_paused = current_time;
	
	time_source_pause(ts_bush_spawn);
	time_source_pause(ts_enemy_spawn);
}
function LevelUnpause(){
	level_running = true;
	level_time_start = current_time;

	time_source_resume(ts_bush_spawn);
	time_source_resume(ts_enemy_spawn);
}

function LevelComplete(){
	level_begin = false;
	level_running = false;
	
	time_source_stop(ts_bush_spawn);
	time_source_stop(ts_enemy_spawn);
}

