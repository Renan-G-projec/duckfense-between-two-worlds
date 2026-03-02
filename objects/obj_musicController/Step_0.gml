if (global.currentDimension != current_dimension) {

    if (global.currentDimension == DIMENSIONS.OVERWORLD) {
        audio_sound_gain(music_overworld, 0.5, 1000);
        audio_sound_gain(music_grayworld, 0, 1000);
    }
    else {
        audio_sound_gain(music_overworld, 0, 1000);
        audio_sound_gain(music_grayworld, 0.5, 1000);
    }

    current_dimension = global.currentDimension;
}