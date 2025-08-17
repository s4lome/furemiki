// Step Event of your object
if (keyboard_check_pressed(ord("E"))) {
    if (distance_to_object(Omcfront) < 100) {  // Check if player is nearby
        // Check if none of the sounds are currently playing
        if (!audio_is_playing(snd_angel_choir_1)) {
            // Choose and play a random sound
           
            audio_play_sound(snd_heavens_gate, 1, false);
        }
    }
}