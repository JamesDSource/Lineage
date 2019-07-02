base_movement_speed = 3;
movement_speed = 3;
vsp = 0;
hsp = 0; 
grav = global.GRAV;
jump_speed = -5;

key_a = false;
key_d = false;
key_pressed_w = false; 
key_pressed_e = false
space_pressed = false;
mouse_pressed_left = false; 

is_attacking = false;

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
enum UPPERPLAYERANIMATIONS
{
	Idle,
	Walking,
	Jump,
	InAir,
	Attacking
}
lower_animation = LOWERPLAYERANIMATIONS.Idle;
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

skeleton_animation_mix("upper-idle", "arm-swing", 0.1);
skeleton_animation_mix("lower-idle", "leg-run", 0.1);
skeleton_animation_mix("arm-swing", "upper-idle", 0.1);
skeleton_animation_mix("leg-run", "lower-idle", 0.1);
skeleton_animation_mix("lower-idle", "standing-jump", 0.1);
skeleton_animation_mix("upper-idle", "standing-jump", 0.1);
skeleton_animation_mix("standing-jump","mid-standing-jump",0.1);
skeleton_animation_mix("rapier-attack","rapier-idle",0.1);
skeleton_animation_mix("rapier-idle","rapier-attack",0.1);