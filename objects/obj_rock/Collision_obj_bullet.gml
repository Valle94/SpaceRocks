//Create a "spread" powerup if 10 seconds has passed
//since game start or 20 seconds have passed since
//the last powerup spawn
if (obj_game.powerup_time < 0)
{
	var _obj = choose(obj_powerup_spread, obj_powerup_ghost);
	instance_create_layer(x, y, "Instances", _obj)
	obj_game.powerup_time = 20
}

//Destroy bullet on contact
instance_destroy(other);

//Adding an explosion effect for when rocks are destroyed
effect_create_above(ef_explosion, x, y, 1.5, c_white);

//Change the direction of the rock after being shot
direction = random(360);

//If big rock, then randomly 2-4 medium rocks.
if sprite_index == spr_rock_big
{
	//Adding if statements for difficulty
	if global.difficulty = "Normal"
	{
		sprite_index = spr_rock_med; 
		speed += random_range(0.5, 1.5)
		repeat(random_range(1, 3))
			instance_copy(true);
	}
	else //"Hard" parameters
	{
		sprite_index = spr_rock_med; 
		speed += random_range(1, 2)
		repeat(random_range(2, 4))
			instance_copy(true);
	}
}
//If medium rock, then randomly 2-4 small rocks
else if sprite_index == spr_rock_med
{
	//Adding if statements for difficulty
	if global.difficulty = "Normal"
	{
		sprite_index = spr_rock_small;
		speed += random_range(0.5, 1.5)
		repeat(random_range(1, 3))
			instance_copy(true);
	}
	else //"Hard" parameters
	{
		sprite_index = spr_rock_small;
		speed += random_range(1, 2)
		repeat(random_range(2, 4))
			instance_copy(true);
	}
}
//Limiting the total number of rocks
else if instance_number(obj_rock) < 20
{
	sprite_index = spr_rock_big
	x = -100;
}
//If rock is small and rocks > the number chose, destroy the rock
else
{
	instance_destroy()
}

//Increment score by 50 for each rock destroyed
obj_game.points += 50;