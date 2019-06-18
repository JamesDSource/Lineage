if(follow != noone)
{
	target_x = follow.x;
	target_y = follow.y;
}

x += random_range(-shake_remain, shake_remain) + (target_x-x)/cam_slow;
y += random_range(-shake_remain, shake_remain) + (target_y-y)/cam_slow;

x = clamp(x,0,room_width);
y = clamp(y,0,room_height);

shake_remain = max(0, shake_remain - ((1/shake_frames)*shake_magnitude));

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(cam,vm);