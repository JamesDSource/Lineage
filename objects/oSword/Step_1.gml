if(instance_exists(oPlayer))
{
	x = oPlayer.x + sword_offset_x;	
	y = oPlayer.y + sword_offset_y;
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	direction = image_angle; 
}