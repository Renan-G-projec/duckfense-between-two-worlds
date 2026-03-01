// Ad Maiorem Dei Gloriam!

updatePosition();
updateDepth();

if (global.currentDimension == DIMENSIONS.OVERWORLD){
	
	if (mouse_check_button(mb_left)) {

	    if (flame_sound == -1) {
	        flame_sound = audio_play_sound(snd_flamethrowerloop, 1, true);
	        audio_sound_gain(flame_sound, 0, 0); 
	    }

	    audio_sound_gain(flame_sound, 1, 200);

	} else {

	    if (flame_sound != -1) {
	        audio_sound_gain(flame_sound, 0, 300);

	        alarm[0] = room_speed * 0.3;
	    }
	}
}