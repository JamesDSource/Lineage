/// @desc create_timer(count)
/// @arg count of frames before signal
with(instance_create_layer(0,0,"Instances",oTimer))
{
	frames = argument[0];
	return id; 
}