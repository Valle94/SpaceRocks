//enable wrapping
move_wrap(true, true, 100)

//Rotation setup
if obj_boss.clockwise == true
{
	image_angle -= 1;
}
else
{
	image_angle += 1;
}

//Iterate alarm
if alarm[4] < 1
{
	alarm[4] = 240
}
//rotation_timer -= 1

//if rotation_timer < 1
//{
	//Change direction
//	direction = random(360)

	//Rotate the opposite direction
//	if obj_boss.clockwise == true
//	{
//		obj_boss.clockwise = false;
//	}
//	else
//	{
//		obj_boss.clockwise = true;
//	}
//	rotation_timer = 240
//}

//If below 50HP, switch to other sprite
if hitpoints <= 50
{
	sprite_index = spr_boss
	image_index = 1
}

//Shoots bullets in 4 directions if above 50 hp
//shoots bullets in 8 directions if below 50 hp
if enemy_bullet_cooldown < 1
{
	if hitpoints > 50
	{
		instance_create_layer(x, y, "Instances", obj_boss_bullets)
		var _boss_bullet = instance_create_layer(x, y, "Instances", obj_boss_bullets);
			_boss_bullet.direction += 90;
			_boss_bullet = instance_create_layer(x, y, "Instances", obj_boss_bullets);
			_boss_bullet.direction -= 90;
			_boss_bullet = instance_create_layer(x, y, "Instances", obj_boss_bullets);
			_boss_bullet.direction += 180;
	}
	else 
	{
		instance_create_layer(x, y, "Instances", obj_boss_bullets)
		var _boss_bullet = instance_create_layer(x, y, "Instances", obj_boss_bullets);
			_boss_bullet.direction += 90;
			_boss_bullet = instance_create_layer(x, y, "Instances", obj_boss_bullets);
			_boss_bullet.direction -= 90;
			_boss_bullet = instance_create_layer(x, y, "Instances", obj_boss_bullets);
			_boss_bullet.direction += 180;
			_boss_bullet = instance_create_layer(x, y, "Instances", obj_boss_bullets);
			_boss_bullet.direction += 45;
			_boss_bullet = instance_create_layer(x, y, "Instances", obj_boss_bullets);
			_boss_bullet.direction -= 45;
			_boss_bullet = instance_create_layer(x, y, "Instances", obj_boss_bullets);
			_boss_bullet.direction += 135;
			_boss_bullet = instance_create_layer(x, y, "Instances", obj_boss_bullets);
			_boss_bullet.direction -= 135;
	}
	enemy_bullet_cooldown = 50
}
enemy_bullet_cooldown = enemy_bullet_cooldown -1