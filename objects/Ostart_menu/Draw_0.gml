if (!show_help) {
    // draw the normal menu
    draw_set_halign(fa_center);
    for (var i = 0; i < array_length(menu_options); i++) {
        if (i == selected) draw_set_color(c_yellow);
        else draw_set_color(c_white);

        draw_text(room_width/2, room_height/2 + i*32, menu_options[i]);
    }
} else {
    // draw only the help screen
    draw_set_halign(fa_center);
    draw_set_color(c_white);

    var msg = "Don't be afraid, this is all not real, nothing really bad can happen to you...\n you might want to wander around... use arrow keys to move...\n you might encounter curious objects... press E to interact with them...\n if you want to wake up, press x...\n when you're ready press ESC and enter...";
    
    // optional: dim the background
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);

    // draw help text on top
    draw_set_color(c_white);
    draw_text(room_width/2, room_height/2, msg);
}
