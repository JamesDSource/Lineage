//intializes frames and seconds
while(frame_count > room_speed)
{
	frame_count -= room_speed; 
	second_count++;	
}
//checks if countdown is finished
if(frame_count <= 0)
{
	if(second_count <= 0)
	{
		pulse = true;
		frame_count = frames;
		pulses++; 

	}
	else
	{
		second_count--;
		frame_count = room_speed;
		pulse = false; 
	}
}
//subtracts frame from timer
else
{
	frame_count--;
	pulse = false;
}