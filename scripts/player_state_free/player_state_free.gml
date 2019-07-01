/// @desc player_state_free()
#region movement and collitions
	//movement
	hsp = (key_d - key_a) * movement_speed;
	vsp += grav;
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
#region animations
	if(place_meeting(x,y+1,oSolid) && key_pressed_w)
	{
		animation = PLAYERANIMATIONS.StandingJump;
		event_user(0);
	}
	else if(animation == PLAYERANIMATIONS.StandingInAir)
	{
		if(place_meeting(x,y+1,oSolid))
		{
			if(hsp == 0)
			{
				animation = PLAYERANIMATIONS.Idle;
				event_user(0);
			}
			else
			{
				animation = PLAYERANIMATIONS.Walking;
				event_user(0);
			}
		}
	}
	if(animation != PLAYERANIMATIONS.StandingJump && animation != PLAYERANIMATIONS.StandingInAir)
	{
		if(hsp != 0 && animation != PLAYERANIMATIONS.Walking) 
		{
			animation = PLAYERANIMATIONS.Walking;
			event_user(0);
		}
		else if(hsp == 0 && animation != PLAYERANIMATIONS.Idle)
		{
			animation = PLAYERANIMATIONS.Idle;
			event_user(0);
		}
	}
#endregion
#region conditions
	if(instance_exists(oDialogue_system)) state = PLAYERSTATE.Dialogue
#endregion