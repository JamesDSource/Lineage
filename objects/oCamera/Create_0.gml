cam = camera_create(); 

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(640,480,1,100000);

camera_set_view_mat(cam, vm);
camera_set_proj_mat(cam, pm);

view_camera[0] = cam;
if(instance_exists(oPlayer))follow = oPlayer;
else follow = noone;
target_x = 0;
target_y = 0;
cam_slow = 25;

shake_magnitude = 0;
shake_frames = 0;
shake_remain = 0;