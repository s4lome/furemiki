global.res_width = 3000;
global.res_height = 3000;
window_set_size(global.res_width, global.res_height);
surface_resize(application_surface, global.res_width, global.res_height);
direction = 1;
sprite_index = SmcFront;
speed = 0;

// Wake up variables
esc_count = 0;       // counts ESC presses
esc_timer = 0;       // timer to reset count
esc_display = false; // whether to show the message
///////


// Check if the current room is the Starting Room
if (room == StartingRoom) {
    // Check if the soundtrack is already playing
    if (!audio_is_playing(snd_weird_dream_of_a_shiba_inu)) {
        // Play the soundtrack in a loop
        audio_play_sound(snd_weird_dream_of_a_shiba_inu, 1, true); 
    }
} else {
    // Stop the soundtrack if it's playing and the room is not the Starting Room
    if (audio_is_playing(snd_weird_dream_of_a_shiba_inu)) {
        audio_stop_sound(snd_weird_dream_of_a_shiba_inu);
    }
}

if (room == Neonroom) {
    // Check if the soundtrack is already playing
    if (!audio_is_playing(snd_acid_inu)) {
        // Play the soundtrack in a loop
        audio_play_sound(snd_acid_inu, 1, true); 
    }
} else {
    // Stop the soundtrack if it's playing and the room is not the Starting Room
    if (audio_is_playing(snd_acid_inu)) {
        audio_stop_sound(snd_acid_inu);
    }
}


if (room == Eyeballroom) {
    // Check if the soundtrack is already playing
    if (!audio_is_playing(snd_fatalisme)) {
        // Play the soundtrack in a loop
        audio_play_sound(snd_fatalisme, 1, true); 
    }
} else {
    // Stop the soundtrack if it's playing and the room is not the Starting Room
    if (audio_is_playing(snd_fatalisme)) {
        audio_stop_sound(snd_fatalisme);
    }
}


if (room == Eyeballroom) {
    // Check if the soundtrack is already playing
    if (!audio_is_playing(snd_fatalisme)) {
        // Play the soundtrack in a loop
        audio_play_sound(snd_fatalisme, 1, true); 
    }
} else {
    // Stop the soundtrack if it's playing and the room is not the Starting Room
    if (audio_is_playing(snd_fatalisme)) {
        audio_stop_sound(snd_fatalisme);
    }
}

if (room == Goldenroom) {
    // Check if the soundtrack is already playing
    if (!audio_is_playing(snd_shiba_in_heaven)) {
        // Play the soundtrack in a loop
        audio_play_sound(snd_shiba_in_heaven, 1, true); 
    }
} else {
    // Stop the soundtrack if it's playing and the room is not the Starting Room
    if (audio_is_playing(snd_shiba_in_heaven)) {
        audio_stop_sound(snd_shiba_in_heaven);
    }
}