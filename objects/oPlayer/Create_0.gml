base_movement_speed = 3;
movement_speed = base_movement_speed;
vsp = 0;
hsp = 0; 
grav = global.GRAV;
jump_speed = -6;

key_a = false;
key_d = false;
key_pressed_w = false; 
key_pressed_e = false
space_pressed = false;
mouse_pressed_left = false; 


state = PLAYERSTATE.Free;
enum PLAYERSTATE 
{
	Free,
	Dialogue	
	
}
equipt = EQUIPT.None;
enum EQUIPT
{
	None,
	Rapier,
	Zweihander
	
}

rapier = ds_map_create();
ds_map_add(rapier, "damage", 3);
ds_map_add(rapier, "speed_mod", 0);
ds_map_add(rapier, "attack", "rapier-attack");
ds_map_add(rapier, "idle", "rapier-idle");


upper_animation = UPPERPLAYERANIMATIONS.Idle;
upper_current = UPPERPLAYERANIMATIONS.Idle;
enum UPPERPLAYERANIMATIONS
{
	Idle,
	Walking,
	InAir,
	Attacking
}
lower_animation = LOWERPLAYERANIMATIONS.Idle;
lower_current = LOWERPLAYERANIMATIONS.Idle;
enum LOWERPLAYERANIMATIONS
{
	Idle,
	Walking,
	Jump,
	InAir,
	Attacking
}
sprite_index = sPlayer;
skeleton_animation_clear(1);
skeleton_animation_set_ext("upper-idle", 0);
skeleton_animation_set_ext("lower-idle", 1);

skeleton_animation_mix("upper-idle", "upper-run", 0.1);
skeleton_animation_mix("upper-run", "upper-idle", 0.1);
skeleton_animation_mix("lower-idle", "lower-run", 0.1);
skeleton_animation_mix("lower-run", "lower-idle", 0.1);

skeleton_animation_mix("rapier-idle", "upper-idle", 0.1);
skeleton_animation_mix("upper-idle", "rapier-idle", 0.1);