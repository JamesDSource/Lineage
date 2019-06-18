#region inputs
	key_a = keyboard_check(ord("A"));
	key_d = keyboard_check(ord("D"));
	key_pressed_w = keyboard_check_pressed(ord("W"));
#endregion
#region states
	if(state == PLAYERSTATE.FREE) player_state_free();
#endregion 
if(hsp != 0) image_xscale = sign(hsp);