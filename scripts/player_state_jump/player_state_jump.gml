with(oPlayer)
{
	#region jump states and animations
		//setting states
		if(jump_state == PLAYERJUMPSTATE.InAir && place_meeting(x,y+1,oSolid))
		{
			jump_state = PLAYERJUMPSTATE.Land;
			state = PLAYERSTATE.Free; 
		}
		else
		{
			if(place_meeting(x,y+1,oSolid)) jump_state = PLAYERJUMPSTATE.Initial;
			else jump_state = PLAYERJUMPSTATE.InAir;
		}
		player_animate();
		//setting animations
	#endregion
	#region movement and collitions
		//movement calculations
		if(jump_state == PLAYERJUMPSTATE.Initial)
		{
			hsp = 0; 
			vsp += jump_speed;
		}
		if(jump_state == PLAYERJUMPSTATE.InAir)
		{
			hsp = (key_d - key_a) * movement_speed; 
		}
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
		//setting movement 
		x += hsp;
		y += vsp;
	#endregion
}