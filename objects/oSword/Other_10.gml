/// @description swaping weapon
if(current_equipt == EQUIPT.NOTHING)
{
	ds_map_replace(weapon, "damage", 0);
	ds_map_replace(weapon, "recovery_frames", 0);
	ds_map_replace(weapon, "sprite", noone);
	ds_map_replace(weapon,"push", 0);
	ds_map_replace(weapon,"blade_offset", 0);
}
else if(current_equipt == EQUIPT.ZWEIHANDER)
{
	ds_map_replace(weapon,"damage",zweihander_damage);	
	ds_map_replace(weapon,"recovery_frames",zweihander_recovery_frames);
	ds_map_replace(weapon,"sprite",zweihander_sprite);
	ds_map_replace(weapon,"push",zweihander_push);
	ds_map_replace(weapon,"blade_offset",zweihander_blade_offset);
}
sprite_index = ds_map_find_value(weapon, "sprite"); 