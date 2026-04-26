/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 0
/// @DnDArgument : "soundid" "snd_music_cutscenes"
/// @DnDSaveInfo : "soundid" "snd_music_cutscenes"
audio_stop_sound(snd_music_cutscenes);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 3B5E6684
/// @DnDArgument : "soundid" "snd_music_menu"
/// @DnDSaveInfo : "soundid" "snd_music_menu"
audio_stop_sound(snd_music_menu);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 05F244C6
/// @DnDArgument : "soundid" "snd_music_game"
/// @DnDSaveInfo : "soundid" "snd_music_game"
audio_stop_sound(snd_music_game);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 33EB8FBC
/// @DnDArgument : "soundid" "snd_music_game"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_music_game"
audio_play_sound(snd_music_game, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B8180F9
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "pause"
pause = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3FEBFDA3
/// @DnDArgument : "var" "level"
global.level = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0853F377
/// @DnDArgument : "var" "global.herb_amount"
global.herb_amount = 0;