/// @description update
skeleton_animation_clear(1);

movement_speed = base_movement_speed + ds_map_find_value(rapier,"speed_mod");
if(animation == PLAYERANIMATIONS.Walking)
{
	if(equipt == EQUIPT.None) skeleton_animation_set_ext("arm-swing", 0);
	else if(equipt == EQUIPT.Rapier) skeleton_animation_set_ext(ds_map_find_value(rapier,"idle"),0);
	skeleton_animation_set_ext("leg-run", 1); 
	image_speed = 1;
}
else if(animation == PLAYERANIMATIONS.Idle)
{
	if(equipt == EQUIPT.None) skeleton_animation_set_ext("upper-idle", 0);
	else if(equipt == EQUIPT.Rapier) skeleton_animation_set_ext(ds_map_find_value(rapier,"idle"),0);
	skeleton_animation_set_ext("lower-idle", 1);
	image_speed = 1;
}
else if(animation == PLAYERANIMATIONS.StandingJump)
{
	skeleton_animation_set_ext("standing-jump",0);
	skeleton_animation_set_ext("standing-jump",1);
	image_speed = 2;
}
else if(animation == PLAYERANIMATIONS.StandingInAir)
{
	skeleton_animation_set_ext("mid-standing-jump",0);
	skeleton_animation_set_ext("mid-standing-jump",1);
	image_speed = 1;
}