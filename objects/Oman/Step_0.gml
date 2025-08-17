//sprites
if (speed > 0) {
    image_speed = 1; // Start animation

    // Assign sprite based on direction
    if (direction == 0) {
        sprite_index = Smanwalkingright;
    } else if (direction == 90) {
        sprite_index = Smanwalkingright;
    } else if (direction == 180) {
        sprite_index = Smanwalkingleft;
    } else if (direction == 270) {
        sprite_index = Smanwalkingleft;
    }
} else {
    sprite_index = Sman;
    image_speed = 0; // Stop animation when idle
}

//moving
switch (state) {
    case "idle":
        timer--;
        if (timer <= 0) {
            state = "walk";
            direction = irandom(9) * 90;
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
            direction = irandom(9) * 90; // Change direction if hitting a wall
        }

        motion_set(direction, speed);
        break;
}
