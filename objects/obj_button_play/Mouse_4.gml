// Inherit the parent event
event_inherited();

//Depending on mode, go to a specific room
if (global.mode == "Arcade")
{
	room_goto(rm_game_normal)
}
if (global.mode == "Maze")
{
	room_goto(rm_maze_1)
}