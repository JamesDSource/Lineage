with(oPlayer)
{
	if(equipt == EQUIPT.None)
	{
		equipt = EQUIPT.Rapier;
		instance_destroy(other);
	}
}