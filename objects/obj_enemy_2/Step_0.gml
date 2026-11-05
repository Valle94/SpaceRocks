//Enable Wrapping
move_wrap(true, true, 20)

//Enemies Autofire bullets
if enemy_bullet_cooldown < 1
{
	instance_create_layer(x, y, "Instances", obj_enemy_bullet_2)
	enemy_bullet_cooldown = 50
}
enemy_bullet_cooldown = enemy_bullet_cooldown -1

//Iterating the alarm
if alarm[2] < 1
{
	alarm[2] = 240
}