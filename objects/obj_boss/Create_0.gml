//Create boss Hitpoint variable
hitpoints = 100

//Initial movement
speed = 1.8;
direction = random(360);
image_angle = 0;

//rotation direction variable
obj_boss.clockwise = true

//Alarm setup for direction/rotation change
obj_boss.alarm[4] = 240
//rotation_timer = 240

//Boss Fire Rate
enemy_bullet_cooldown = 1