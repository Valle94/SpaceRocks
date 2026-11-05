//Drawing Boss HP in top right if alive
//If dead, congratulate the player
if hitpoints > 0
{
	draw_set_font(fnt_help)
	draw_text(700, 30, obj_boss.clockwise)
	draw_text(950, 30, hitpoints)
}
else
{
	draw_set_font(fnt_menu)
	draw_set_halign(fa_center)
	draw_text(500, 500, "CONGRATULATIONS\nYOU WIN!!")
}