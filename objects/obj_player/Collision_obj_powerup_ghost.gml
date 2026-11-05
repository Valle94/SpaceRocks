//Activate power-up
powerup = 2;

//Set alarm for 10 seconds
alarm[3] = 10 * 60; //10 * 60 is derived from 10 frames at 60 frames per second

//Change ship color to transparent to indicate
//an active power-up
image_blend = c_white;
image_alpha = 0.4;

//Destroy the collected power up
instance_destroy(other);