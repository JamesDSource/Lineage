/// @description pause
if(!global.pause)
{
	global.pause = true;
	sPause = surface_create(room_width, room_height);
	instance_deactivate_all(true);	
}
else
{
	global.pause = false;
	if(sprite_exists(sPause)) sprite_delete(sPause);
	instance_activate_all();
}