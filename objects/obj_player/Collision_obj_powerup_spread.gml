//Activate power-up
powerup = 1;

//Set alarm for 10 seconds
alarm[3] = 10 * 60; //10 * 60 is derived from 10 frames at 60 frames per second

//Change ship color to yellow to indicate
//an active power-up
image_blend = c_yellow;

//Destroy the collected power up
instance_destroy(other);