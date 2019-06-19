/// @desc swap_weapon(weapon);
/// @arg Weapon to swap to
new_weapon = argument[0]; 
with(oSword)
{
	if(other.new_weapon == "zweihander" && current_equipt != EQUIPT.ZWEIHANDER)
	{
		current_equipt = EQUIPT.ZWEIHANDER;
		event_user(0);
	}
	else if (current_equipt != EQUIPT.NOTHING)
	{
		current_equipt = EQUIPT.NOTHING;
		event_user(0);
	}
	
}