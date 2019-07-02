if(animation == PLAYERANIMATIONS.StandingJump)
{
	if(place_meeting(x,y+1,oSolid))vsp += jump_speed;
	animation = PLAYERANIMATIONS.StandingInAir;
}
if(skeleton_animation_get_ext(0) == "rapier-attack") is_attacking = false;