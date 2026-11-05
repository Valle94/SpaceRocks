//Set draw text settings
draw_set_font(fnt_help)
draw_set_halign(fa_center)

if room == rm_maze_1
{
	draw_text(550, 170, "Reach the star to progress\nto the next level")
}
if room == rm_maze_2
{
	draw_text(550, 315, "Watch out for\nthose space rocks!")
}
if room == rm_maze_3
{
	draw_text(200, 765, "This is the last level.\nGood Luck!")
}