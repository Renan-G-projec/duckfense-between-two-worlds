music_overworld = audio_play_sound(snd_overworld, 0, true);
audio_sound_gain(music_overworld, 0.5, 0);

music_grayworld = audio_play_sound(snd_grayworld, 0, true);
audio_sound_gain(music_grayworld, 0, 0);

current_dimension = global.currentDimension;