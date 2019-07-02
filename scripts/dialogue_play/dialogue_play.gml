/// @desc dialogue_play(dialogue_system, object, size)
/// @arg dialogue_system to be played
/// @arg object to be drawn on
/// @arg size of textbox
if(!instance_exists(oDialogue_system))
{
	with(instance_create_layer(0,0,"Effects",oDialogue_system))
	{
		if(argument[2] <= 0) txtbox = sTextbox_small;
		else if(argument[2] == 1) txtbox = sTextbox_medium;
		else if(argument[2] >= 2) txtbox = sTextbox_large;
		draw_x = argument[1].x;
		draw_y = argument[1].y; 
		dialogue = argument[0];
		event_user(0);
	}
}