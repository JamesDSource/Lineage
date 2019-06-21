//zweihander properties
zweihander_damage = 10; 
zweihander_recovery_frames = 20;
zweihander_sprite = sZweihander;
zweihander_push = 8; 

current_equipt = EQUIPT.NOTHING; 
enum EQUIPT
{
	NOTHING,
	ZWEIHANDER,	
	
}
equipt_length = 2;
equipt_num = 0;

is_attacking = false;
sword_offset_x = 0;
sword_offset_y = 10;
weapon = ds_map_create();
ds_map_add(weapon, "damage", 0);
ds_map_add(weapon, "recovery_frames", 0);
ds_map_add(weapon, "sprite", noone);
ds_map_add(weapon, "push", 0); 