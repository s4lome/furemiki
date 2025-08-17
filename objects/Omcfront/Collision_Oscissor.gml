if (keyboard_check_pressed(ord("E"))) {
    // Trigger the object's animation
    with (Oscissor) {
        sprite_index = S_scissors_moving;
        image_speed = 1;
        
        // Only play sound if no scissor sound is currently playing
        if (!audio_is_playing(snd_scissors_1) && 
            !audio_is_playing(snd_scissors_2) && 
            !audio_is_playing(snd_scissors_3) && 
            !audio_is_playing(snd_scissors_4) && 
            !audio_is_playing(snd_scissors_5)) {
            var snd = choose(snd_scissors_1, snd_scissors_2, snd_scissors_3, snd_scissors_4, snd_scissors_5);
            audio_play_sound(snd, 1, false);
        }
    }
}