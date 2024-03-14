/// @description check for player presence

if(global.game_state != GameStates.PLAY) exit;

if(player_in_range) && (global.i_player.fighter.attack_index == -1)
{
	foraging_progress = min(foraging_threshold, foraging_progress + 5 + global.i_player.fighter.foraging);	
} else {
	if(foraging_progress > 0)
	{
		foraging_progress = max(0, foraging_progress-1);
	}
}

if(foraging_progress == foraging_threshold) ConsumeForagingCharge();
