draw_self();

//While power up is active, draw a timer above the player
//indicating how much time in seconds is remaining
if (alarm[3] > 0)
{
	draw_set_font(fnt_help); //Set font
	draw_set_halign(fa_center); //Align center above player
	var _time = round(alarm[3] / 60); //Alarm time is in frames, we want to convert to seconds and round
	draw_text(x, y - 60, _time);
	//Reset font and alignment
	draw_set_font(fnt_default);
	draw_set_halign(fa_left);
}