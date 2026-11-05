draw_self();

//Button Font
draw_set_font(fnt_menu)

//Text alignment within button
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Text variable is drawn in the button
draw_text(x, y, button_text);

//Resetting draw alignment
draw_set_font(fnt_default)
draw_set_halign(fa_left);
draw_set_valign(fa_top);