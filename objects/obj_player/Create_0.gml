//Adding bullet cooldown
bullet_cooldown = 1

//Adding color choice from settings
//if room = rm_game_normal
	if global.playercolor == "Black"
	{
		sprite_index = spr_player
		image_index = 1
	}
	else
	{
		sprite_index = spr_player
		image_index = 0
	}

//Create power-up variable
powerup = 0;