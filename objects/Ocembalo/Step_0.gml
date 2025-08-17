// Step Event of your object
if (keyboard_check_pressed(ord("E"))) {
    if (distance_to_object(Omcfront) < 50) {  // Check if player is nearby
        // Check if none of the sounds are currently playing
        if (!audio_is_playing(snd_harpsichord_1) && 
            !audio_is_playing(snd_harpsichord_2) &&
			!audio_is_playing(snd_harpsichord_3) &&
            !audio_is_playing(snd_harpsichord_4)) {
            // Choose and play a random sound
            var snd = choose(snd_harpsichord_1
							, snd_harpsichord_2
							, snd_harpsichord_3
							, snd_harpsichord_4);
            audio_play_sound(snd, 1, false);
        }
    }
}