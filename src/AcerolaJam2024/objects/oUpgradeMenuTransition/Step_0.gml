/// @description 


switch(trans_type)
{
	case IN:
		break;
	case OUT:
		// set timer to skip step event
		creator.image_alpha -= trans_rate;
		show_debug_message("current alpha = {0} | obj = {1}",creator.image_alpha, object_get_name(creator.object_index));
		if(creator.image_alpha <= 0)
		{
			show_debug_message("boom");
			// start level and
			instance_destroy(creator);
			instance_destroy();
			StartCountdownToLevelStart(3, 30, 4, 6);
		}
		break;
}

