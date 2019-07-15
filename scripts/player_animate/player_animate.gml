///@desc player_animate()
with(oPlayer)
{
	//setting upper animations
	if(upper_current != upper_animation)
	{
		if(upper_animation == UPPERPLAYERANIMATIONS.Attacking)
		{
			if(equipt == EQUIPT.None) upper_animation = UPPERPLAYERANIMATIONS.Idle;
			else if(equipt == EQUIPT.Rapier) skeleton_animation_set_ext("rapier-attack",0);
		}
		else if(upper_animation == UPPERPLAYERANIMATIONS.Walking)
		{
			if(equipt == EQUIPT.None) skeleton_animation_set_ext("upper-run",0);
			else if(equipt == EQUIPT.Rapier) skeleton_animation_set_ext("rapier-idle",0);
		}
		else if(upper_animation == UPPERPLAYERANIMATIONS.Idle)
		{
			if(equipt == EQUIPT.None) skeleton_animation_set_ext("upper-idle",0);
			else if(equipt == EQUIPT.Rapier) skeleton_animation_set_ext("rapier-idle",0);
		}
		upper_current = upper_animation;
	}
	//setting lower animations
	if(lower_current != lower_animation)
	{
		if(lower_animation == LOWERPLAYERANIMATIONS.Walking)
		{
			skeleton_animation_set_ext("lower-run",1);
		}
		else if(lower_animation = LOWERPLAYERANIMATIONS.Idle)
		{
			skeleton_animation_set_ext("lower-idle",1);
		}
		lower_current = lower_animation;
	}
}