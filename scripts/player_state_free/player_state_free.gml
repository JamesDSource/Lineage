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
	//jump
	if(place_meeting(x,y+1,oSolid) && key_pressed_w)
	{
		vsp += jump_speed;
	}
	//moves object
	x += hsp;
	y += vsp;
#endregion
#region actions
	if(mouse_pressed_left && !instance_exists(oSlash))
	{
		with(instance_create_layer(oSword.x,oSword.y,"hits", oSlash))	
		{
			friendly = true; 
			image_angle = point_direction(x,y,mouse_x,mouse_y);
			damage = ds_map_find_value(oSword.weapon, "damage");
			x += lengthdir_x(ds_map_find_value(oSword.weapon, "blade_offset"), image_angle);
			y += lengthdir_y(ds_map_find_value(oSword.weapon, "blade_offset"), image_angle);
		}
	}
#endregion
#region animations
	if(hsp != 0 && skeleton_animation_get() != "run") skeleton_animation_set("run");
	else if(hsp == 0 && skeleton_animation_get() != "idle") skeleton_animation_set("idle");
#endregion