//If difficulty is normal, destroy enemy ships
if global.difficulty = "Normal"
{
	instance_destroy()
}
//Else execute enemy ship code as normal
else
{
	//Enemy movement in a random direction
	//Constant speed, turn sprite to face direction travelled
	speed = 2;
	direction = random(360);
	image_angle = direction

	enemy_bullet_cooldown = 1

	//Creating alarm[1] 
	obj_enemy_1.alarm[1] = 240
}