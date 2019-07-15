/// @desc hit_pause(count)
/// @arg count of frames to pause
with(oGame_controller)
{
	event_user(0);
	alarm[0] = argument[0];
}