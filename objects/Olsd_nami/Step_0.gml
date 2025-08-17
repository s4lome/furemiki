//sprites
if (speed > 0) {
    image_speed = 1; // Start animation

    // Assign sprite based on direction
    if (direction == 0) {
        sprite_index = Slsd_nami_moving;
    } else if (direction == 90) {
        sprite_index = Slsd_nami_moving;
    } else if (direction == 180) {
        sprite_index = Slsd_nami_moving;
    } else if (direction == 270) {
        sprite_index = Slsd_nami_moving;
    }
} else {
    sprite_index = Slsd_nami
    image_speed = 0; // Stop animation when idle
}

//moving
switch (state) {
    case "idle":
        timer--;
        if (timer <= 0) {
            state = "walk";
            direction = irandom(30) * 90;
            timer = room_speed * 3; // Walk for 3 seconds
        }
        break;

    case "walk":
        timer--;
        if (timer <= 0) {
            state = "idle";
            timer = room_speed * 2; // Wait for 2 seconds before moving again
        }

        if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), O_solid_parent)) {
            direction = irandom(30) * 90;
        }

        motion_set(direction, speed);
        break;
}


if (keyboard_check_pressed(ord("E"))) {
    if (distance_to_object(Omcfront) < 100) {  // Check if player is nearby
        // Check if none of the sounds are currently playing
        if (!audio_is_playing(snd_nebraska_howl)) {
            // Choose and play a random sound
           
            audio_play_sound(snd_nebraska_howl, 1, false);
        }
    }
}