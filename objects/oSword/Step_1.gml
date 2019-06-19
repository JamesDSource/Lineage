if(instance_exists(oPlayer))
{
	x = oPlayer.x;	
	y = oPlayer.y;
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	direction = image_angle; 
}