movement_speed = 3;
vsp = 0;
hsp = 0; 
grav = global.GRAV;
jump_speed = -5;

key_a = false;
key_d = false;
key_pressed_w = false; 
mouse_pressed_left = false; 

state = PLAYERSTATE.FREE;
enum PLAYERSTATE 
{
	FREE	
	
	
	
}
equipt = EQUIPT.None;
enum EQUIPT
{
	None,
	Rapier,
	Zweihander
	
}

skeleton_animation_mix("run", "idle", 0.10);
skeleton_animation_mix("idle", "run", 0.10);