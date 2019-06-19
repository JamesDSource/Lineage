if(ds_map_find_value(oSword.weapon, "sprite") != noone)
{
	var weapon = ds_map_find_value(oSword.weapon, "sprite");
	draw_sprite(weapon,0,sword_draw_x,sword_draw_y);
}