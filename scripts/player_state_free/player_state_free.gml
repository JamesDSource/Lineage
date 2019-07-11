/// @desc player_state_free()
#region animations
	//getting upper animations
	//if(space_pressed) upper_animation = UPPERPLAYERANIMATIONS.Attacking;
	if(upper_animation != UPPERPLAYERANIMATIONS.Attacking)
	{
		if(hsp != 0) upper_animation = UPPERPLAYERANIMATIONS.Walking;
		else upper_animation = UPPERPLAYERANIMATIONS.Idle;
	}
	//getting lower animations
	if(place_meeting(x,y+1,oSolid) && key_pressed_w) lower_animation = LOWERPLAYERANIMATIONS.Jump;
	if(lower_animation != LOWERPLAYERANIMATIONS.Jump)
	{
		if(hsp != 0) lower_animation = LOWERPLAYERANIMATIONS.Walking;
		else lower_animation = LOWERPLAYERANIMATIONS.Idle; 
	}
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
		if(lower_animation == LOWERPLAYERANIMATIONS.Jump)
		{
			skeleton_animation_set_ext("lower-jump",1);
		}
		else if(lower_animation == LOWERPLAYERANIMATIONS.Walking)
		{
			skeleton_animation_set_ext("lower-run",1);
		}
		else if(lower_animation = LOWERPLAYERANIMATIONS.Idle)
		{
			skeleton_animation_set_ext("lower-idle",1);
		}
		lower_current = lower_animation;
	}
#endregion
#region movement and collitions
	//movement
	hsp = (key_d - key_a) * movement_speed;
	vsp += grav;
	if(place_meeting(x,y+1,oSolid) && key_pressed_w) vsp += jump_speed;
	//horizontal collitions
	if(place_meeting(x+hsp,y,oSolid))
	{
		while(!place_meeting(x+sign(hsp),y,oSolid)) x+=sign(hsp);
		hsp = 0;
	}
	//verticle collitions
	if(place_meeting(x,y+vsp,oSolid))
	{
		while(!place_meeting(x,y+sign(vsp),oSolid)) y+=sign(vsp);
		vsp = 0;
	}
	//moves object
	x += hsp;
	y += vsp;
#endregion
#region actions
#endregion
#region conditions
	if(instance_exists(oDialogue_system)) state = PLAYERSTATE.Dialogue
#endregion