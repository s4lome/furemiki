if (place_meeting(x, y, Omcfront)) {  // If player is overlapping
    if (can_play_sound) {
        // Choose a random sound from snd_acid_step_1 to snd_acid_step_7
        var snd = choose(snd_acid_step_1, snd_acid_step_2, snd_acid_step_3, snd_acid_step_4, 
                         snd_acid_step_5, snd_acid_step_6, snd_acid_step_7);
        
        // Play the chosen sound
        audio_play_sound(snd, 1, false);
        
        can_play_sound = false;
        sound_timer = footstep_cooldown;
    }
}

// Handle cooldown
if (!can_play_sound) {
    sound_timer -= 1;
    if (sound_timer <= 0) can_play_sound = true;
}