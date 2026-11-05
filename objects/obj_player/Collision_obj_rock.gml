//If "ghost" powerup is active, skip this event
if (powerup == 2) exit;

//Particle effect for player + rock collision
effect_create_above(ef_firework, x, y, 1, c_white);

//During collision destroy the player
instance_destroy();

//Respawn and Increment Lives
if lives >= 1
{
	//Respawn in middle if in normal mode
	//Respawn in bottom left if in a maze room
	if room == rm_game_normal
	{
		instance_create_layer(500, 500, "Instances", obj_player)
		lives -= 1
	}
	else
	{
		instance_create_layer(75, 925, "Instances", obj_player)
		lives -= 1
	}
}
else
{
	obj_game.alarm[0] = 120;
}