// Step Event of obj_object

// Check if the animation has finished
if (sprite_index == S_scissors_moving && image_index >= image_number - 1) {
    // Reset to idle sprite
    sprite_index = S_scissor_open;
    image_speed = 0;
}
