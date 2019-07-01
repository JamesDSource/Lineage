if(animation == PLAYERANIMATIONS.StandingJump)
{
	if(place_meeting(x,y+1,oSolid))vsp += jump_speed;
	animation = PLAYERANIMATIONS.StandingInAir;
	event_user(0);
}