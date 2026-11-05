//Increment power-up spawn timer every second
powerup_time -= delta_time / 1000000;
//Delta_time is the amount of time between frames in microseconds
//Division by 1,000,000 converts to seconds

//Move to boss room
if points >= 10000 and room == rm_game_normal
{
	room_goto(rm_boss)
}