//Modifications from Original:
//Changed movement to WAD keys
//Added Spacebar as alternate shoot button, and hold to shoot for both

//Forward movement for the ship object
if keyboard_check(vk_up)
or keyboard_check(ord("W"))
{
	motion_add(image_angle, 0.1)
}


//Left and right turning of the ship object
if keyboard_check(vk_left)
or keyboard_check(ord("A"))
{
	image_angle += 4;
}
if keyboard_check(vk_right)
or keyboard_check(ord("D"))
{
	image_angle -= 4;
}

//Enable wrapping
move_wrap(true, true, 0)

//Disable leaving room if in a maze room
//if room == rm_maze_1
//{
//	x = clamp(x, 0, room_width);
//	y = clamp(y, 0, room_height);
//}
//This code didn't seem to working as I wanted it to
//I'll try to figure it out another time.

//Enabling mouse button or spacebar to shoot
//Allowing hold to shoot and adding timer to limit number of bullets
//The 10 after bullet_cooldown can be changed to alter the rate of fire
//for our space gun
if mouse_check_button(mb_left) && (bullet_cooldown < 1)
or keyboard_check(vk_space) && (bullet_cooldown < 1)
{
	instance_create_layer(x, y, "Instances", obj_bullet);
	bullet_cooldown = 10
	
	//Adding the "power" to our power-up
	//While active, shoot a cone of bullets
	if (powerup == 1)
	{
		var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction += 10;
		_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction -= 10;
	}
}

bullet_cooldown = bullet_cooldown - 1

//Description of above logic: Every frame you hold mb_left or space, the game
//will check the bullet_cooldown variable. If the cooldown is >1, nothing will happen
//If the cooldown is < 1, it will fire a bullet, then set bullet_cooldown to 10. 
//The bullet cooldown decreases by 1 each frame, so after 10 frames you will shoot again.

//This code is trying to create "collisions" will my walls without using physics
//move_and_collide(hspeed, vspeed, obj_wall_beam)
if place_meeting(x + hspeed, y, obj_wall_parent)
{
	self.x = x - hspeed;
}
if place_meeting(x - hspeed, y, obj_wall_parent)
{
	self.x = x + hspeed;
}
if place_meeting(x, y + vspeed, obj_wall_parent)
{
	self.y = y - vspeed;
}
if place_meeting(x, y - vspeed, obj_wall_parent)
{
	self.y = y + vspeed;
}