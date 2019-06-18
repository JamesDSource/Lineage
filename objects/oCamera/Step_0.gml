if(follow != noone)
{
	target_x = follow.x;
	target_y = follow.y;
}

x += (target_x-x)/cam_slow;
y += (target_y-y)/cam_slow;

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(cam,vm);