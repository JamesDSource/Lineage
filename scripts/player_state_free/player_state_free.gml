/// @desc player_state_free()
#region animations
	//getting upper animations
	if(upper_animation != UPPERPLAYERANIMATIONS.Attacking)
	{
		if(hsp != 0) upper_animation = UPPERPLAYERANIMATIONS.Walking;
		else upper_animation = UPPERPLAYERANIMATIONS.Idle;
	}
	//getting lower animations
	if(hsp != 0) lower_animation = LOWERPLAYERANIMATIONS.Walking;
	else lower_animation = LOWERPLAYERANIMATIONS.Idle; 
	player_animate();
#endregion
#region movement and collitions
	//movement
	hsp = (key_d - key_a) * movement_speed; 
	vsp += grav;
	if(place_meeting(x,y+1,oSolid) && key_pressed_w) state = PLAYERSTATE.Jump; 
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
	x += round(hsp);
	y += round(vsp);
#endregion
#region actions
	if(upper_animation != UPPERPLAYERANIMATIONS.Attacking && shift_pressed)
	{
		upper_animation = UPPERPLAYERANIMATIONS.Attacking; 
	}
	else
	{
	}
#endregion
#region conditions
	if(instance_exists(oDialogue_system)) state = PLAYERSTATE.Dialogue
#endregion