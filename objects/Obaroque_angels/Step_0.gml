// Step Event of your object
if (keyboard_check_pressed(ord("E"))) {
    if (distance_to_object(Omcfront) < 100) {  // Check if player is nearby
        // Check if none of the sounds are currently playing
        if (!audio_is_playing(snd_angel_choir_1) && 
            !audio_is_playing(snd_angel_choir_2)) {
            // Choose and play a random sound
            var snd = choose(snd_angel_choir_1
							, snd_angel_choir_2);
            audio_play_sound(snd, 1, false);
        }
    }
}