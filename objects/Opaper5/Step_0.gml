if (place_meeting(x, y, Omcfront)) {  // If player is overlapping
    if (can_play_sound) {
        audio_play_sound(snd_paper_5, 1, false);
        can_play_sound = false;
        sound_timer = footstep_cooldown;
    }
}

// Handle cooldown
if (!can_play_sound) {
    sound_timer -= 1;
    if (sound_timer <= 0) can_play_sound = true;
}