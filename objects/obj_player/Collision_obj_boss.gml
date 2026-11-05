//Destroy player
if lives >= 1
{

	instance_create_layer(500, 500, "Instances", obj_player)
	lives -= 1
}
else
{
	obj_game.alarm[0] = 120;
}