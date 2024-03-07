/// @description 

LevelManagerScripts();


gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

timer_pos = vect2(0.5*gui_w,10);

level_time = 120;
bush_time = 20;
enemy_time = 8;
ts_level_timer = time_source_create(time_source_global,1,time_source_units_seconds,LevelComplete,[],1);
ts_bush_timer = time_source_create(time_source_global,1,time_source_units_seconds,TimedBushPlacement,[],-1);
ts_enemy_timer = time_source_create(time_source_global,1,time_source_units_seconds,TimedEnemyPlacement,[],-1);

level_index = 0; // -1 means that the game has not begun yet
level_begin = false;
level_running = false;

timer_minutes_string = "00";
timer_seconds_string = "00";
timer_milliseconds_string = "00";


