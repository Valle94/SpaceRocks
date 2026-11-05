//Start music on room start
if room == rm_boss
{
	audio_play_sound(snd_boss_music, 0, true, 0.8 * global.music_volume)
}
else
{
	audio_play_sound(snd_music, 0, true, 1 * global.music_volume)
}