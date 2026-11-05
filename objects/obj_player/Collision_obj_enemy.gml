//Particle effect for player + rock collision
effect_create_above(ef_firework, x, y, 1, c_white);

//During collision destroy the player
instance_destroy();

//Set alarm for player "death"
obj_game.alarm[0] = 120;