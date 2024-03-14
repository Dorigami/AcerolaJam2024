function Start(){
	instance_create_depth(0,0,UPPERDEPTH,oStartMenuTransition);
}
function Tutorial(){
	with(oStartMenu)
	{
		show_tutorial = !show_tutorial
		show_debug_message("show tutorial = {0} | pos = {1}",show_tutorial, tut_pos);
	}
}
function Quit(){
	game_end();
}
