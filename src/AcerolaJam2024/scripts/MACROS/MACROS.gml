#macro ASPECT_RATIO 16/9
#macro RESOLUTION_W 640
#macro RESOLUTION_H 720 // doesnt really do anything, height is calculated based on aspect ratio and width
#macro FRAME_RATE 60
#macro ROOM_START rGame
#macro NONE -1
#macro OUT 0
#macro IN 1
#macro UPPERDEPTH -5000
#macro LOWERDEPTH 0

enum GameStates 
{
    MAIN_MENU,
	PLAY,
	PAUSE,
    VICTORY,
    DEFEAT,
}
enum FLOATTYPE
{
	FLARE,
	LINEAR,
	TICK
}
