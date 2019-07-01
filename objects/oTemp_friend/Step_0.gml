if(place_meeting(x,y,oPlayer))
{
	if(keyboard_check_pressed(ord("E")) && oPlayer.state == PLAYERSTATE.Free)
	{
		dialogue_play(talk ,oTemp_friend);
	}
}
