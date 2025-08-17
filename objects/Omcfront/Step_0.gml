window_set_size(900,900)
// Save current position before moving
var old_x = x;
var old_y = y;

// Movement speed
if (room == StartingRoom) {
    var move_speed = 17; // Set a specific speed for room1
} else if (room == Neonroom) {
    var move_speed = 10; // Set a different speed for room2
} else if (room == Goldenroom) {
    var move_speed = 10; // Set another speed for room3
} else {
    var move_speed = 10; // Default speed
}

// Movement keys
var moving = false;

// Horizontal movement
if (keyboard_check(vk_left)) {
    x -= move_speed; // Move left
    sprite_index = Smcwalkingleft; // Walking left sprite
    moving = true;
    if (place_meeting(x, y, O_solid_parent)) {
        x = old_x; // Undo horizontal movement if collision occurs
    }
} 
else if (keyboard_check(vk_right)) {
    x += move_speed; // Move right
    sprite_index = Smcwalkingright; // Walking right sprite
    moving = true;
    if (place_meeting(x, y, O_solid_parent)) {
        x = old_x; // Undo horizontal movement if collision occurs
    }
}

// Vertical movement
if (keyboard_check(vk_up)) {
    y -= move_speed; // Move up
    sprite_index = Smcwalkingup; // Walking up sprite
    moving = true;
    if (place_meeting(x, y, O_solid_parent)) {
        y = old_y; // Undo vertical movement if collision occurs
    }
} 
else if (keyboard_check(vk_down)) {
    y += move_speed; // Move down
    sprite_index = Smcwalkingdown; // Walking down sprite
    moving = true;
    if (place_meeting(x, y, O_solid_parent)) {
        y = old_y; // Undo vertical movement if collision occurs
    }
}

// Stop step sound when not moving
if (!moving) {
    audio_stop_sound(snd_step); // Stop the step sound
} else {
    // Play step sound when moving
    if (!audio_is_playing(snd_step)) { // Prevent overlapping sounds
        audio_play_sound(snd_step, 1, false); // Play the step sound
    }
}

// Idle sprite logic
if (!moving) {
    if (sprite_index == Smcwalkingleft) {
        sprite_index = mcleftidle; // Idle left sprite
    } 
    else if (sprite_index == Smcwalkingright) {
        sprite_index = mcrightidle; // Idle right sprite
    } 
    else if (sprite_index == Smcwalkingup) {
        sprite_index = mcupidle; // Idle up sprite
    } 
    else if (sprite_index == Smcwalkingdown) {
        sprite_index = SmcFront; // Idle down sprite
    }
}

// Additional collision handling (unchanged)
if (place_meeting(x + hspeed + 100, y, O_solid_parent)) {
    hspeed = 0; // Stop horizontal movement
}
if (place_meeting(x, y + vspeed + 100, O_solid_parent)) {
    vspeed = 0; // Stop vertical movement
}

if (place_meeting(x, y, O_solid_parent)) {
    var collision = instance_place(x, y, O_solid_parent);

    // Push out horizontally
    if (collision) {
        if (x < collision.x) x -= 1; // Push left
        else if (x > collision.x) x += 1; // Push right
    }

    // Push out vertically
    if (collision) {
        if (y < collision.y) y -= 1; // Push up
        else if (y > collision.y) y += 1; // Push down
    }
}

move_wrap(true,true,0);

if (position_meeting( x + moving, y, Oscissor) == false)
{
	x += moving
}


// Detect X press
if (keyboard_check_pressed(ord("X"))) {
    esc_count += 1;
    esc_timer = room_speed * 3; // reset timer to 3 seconds
    esc_display = true;
}

// Decrease timer every step
if (esc_timer > 0) {
    esc_timer -= 1;
} else {
    esc_count = 0;       // reset count if timer runs out
    esc_display = false; // hide message
}

// Close game if pressed 3 times in a row
if (esc_count >= 3) {
    game_end();
}