//When colliding with player, move to next room
//I'm not using room_goto_next because i don't have 
//a proper order set up
if room == rm_maze_1
{
	room_goto(rm_maze_2)
}
if room == rm_maze_2
{
	room_goto(rm_maze_3)
}
if room == rm_maze_3
{
	room_goto(rm_main_menu)
}
