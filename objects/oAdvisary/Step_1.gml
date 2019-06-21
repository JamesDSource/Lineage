if(place_meeting(x,y,oSlash)) hp -= ds_map_find_value(oSword.weapon, "damage");
if(hp <= 0) instance_destroy();