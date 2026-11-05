draw_set_font(fnt_menu)
draw_set_halign(fa_center)

//Player Color UI info
draw_text(200, 280, "Player Color");
draw_text(190, 600, global.playercolor);

draw_text(500, 280, "Mode");
draw_text(500, 600, global.mode);

draw_text(800, 280, "Difficulty");
draw_text(800, 600, global.difficulty);


draw_set_font(fnt_default)
draw_set_halign(fa_left)