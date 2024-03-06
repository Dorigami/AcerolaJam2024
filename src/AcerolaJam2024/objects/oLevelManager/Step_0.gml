/// @description 

// handle functions when the countdown is running
if(level_time_elapsed < level_time_duration)
{
	if(level_running)
	{
		var _elapsed_ms = level_time_elapsed + current_time-level_time_start
		var _remaining_ms = level_time_duration - _elapsed_ms; 
		timer_minutes_string = string(_remaining_ms div 60000);
		timer_seconds_string = string((_remaining_ms div 1000) % 60);
		timer_milliseconds_string = string(_remaining_ms % 1000);
		while(string_length(timer_minutes_string) < 2) timer_minutes_string = "0"+timer_minutes_string;
		while(string_length(timer_seconds_string) < 2) timer_seconds_string = "0"+timer_seconds_string;
		while(string_length(timer_milliseconds_string) < 3) timer_milliseconds_string = "0"+timer_milliseconds_string;
	}
}
