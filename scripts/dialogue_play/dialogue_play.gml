/// @desc dialogue_play(dialogue_system, object)
/// @arg dialogue_system to be played
/// @arg object to be drawn on
if(!instance_exists(oDialogue_system))
{
	with(instance_create_layer(0,0,"Effects",oDialogue_system))
	{
		draw_x = argument[1].x;
		draw_y = argument[1].y; 
		dialogue = argument[0];
		event_user(0);
	}
}