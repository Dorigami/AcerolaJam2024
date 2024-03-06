/// @description 

level_index = -1; // -1 means that the game has not begun yet
level_begin = false;
level_running = false;
level_time_duration = 0;
level_time_elapsed = 0;
level_time_start = 0;
level_time_paused = 0;
level_time_end = 0;

timer_minutes_string = "0:00";
timer_seconds_string = "0:00";
timer_milliseconds_string = "0:00";

function LevelBegin(_duration){
	if(!level_begin)
	{
		// set parameters
		level_begin = true;
		level_running = true;
		level_time_duration = _duration;
		level_time_elapsed = 0;
		level_time_start = current_time;
		
		// place bushes and inital enemies
		SpawnBush(0.1);
	}
}

function LevelPause(){
	level_running = false;
	level_time_elapsed += current_time - level_time_start;
	level_time_paused = current_time;
}
function LevelUnpause(){
	level_running = true;
	level_time_start = current_time;
}

function LevelComplete(){

}
