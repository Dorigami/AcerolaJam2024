function Start(){
	instance_create_depth(0,0,UPPERDEPTH,oStartMenuTransition);
}
function Tutorial(){
	with(oStartMenu){show_tutorial = !show_tutorial}
}
function Quit(){
	game_end();
}
