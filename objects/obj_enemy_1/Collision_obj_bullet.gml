//Destroy bullet and ship on impact
instance_destroy(other)
instance_destroy()

//Explostion effect for bullet on enemy impact
effect_create_above(ef_explosion, x, y, 1, c_red)

//Increase points by 100 for each ship destroyed
obj_game.points += 100

//Respawn enemy
instance_create_layer(250, 750, "Instances", obj_enemy_1)