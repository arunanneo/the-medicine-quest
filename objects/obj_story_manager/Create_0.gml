/// @description Story intro: stop menu music; play cutscene music once, looping (keeps going across rm_story_* rooms).
audio_stop_sound(snd_music_menu);

if (!audio_is_playing(snd_music_cutscenes)) {
	audio_play_sound(snd_music_cutscenes, 0, true, 1.0, undefined, 1.0);
}
