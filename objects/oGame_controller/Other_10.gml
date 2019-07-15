/// @description pause
if(!hitpause)
{
	if(!global.pause)
	{
		global.pause = true;
		instance_deactivate_all(true);	
		sPause = sprite_create_from_surface(application_surface, 0, 0, display_get_gui_width(), display_get_gui_width(), false, false, 0, 0);
	}
	else
	{
		global.pause = false;
		instance_activate_all();
		sprite_delete(sPause);
	}
}