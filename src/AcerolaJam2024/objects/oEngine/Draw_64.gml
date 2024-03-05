/// @description 
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

var _arr = ["PAUSE", "PLAY", "VICTORY", "DEFEAT", "MAIN_MENU"];
draw_text(0, 8, "GAME STATE: " + _arr[global.game_state]);

