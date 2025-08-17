// Player Draw Event
draw_self(); // draws the sprite at the player’s position




if (esc_display) {
    // dim background
    draw_set_alpha(0.6);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);

    // set text alignment
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    // use the large font
    draw_set_font(wake_up_font);
    draw_set_color(c_white);

    var msg = "I can't seem to wake up...";
    draw_text(room_width/2, room_height/2, msg);

    // optional: reset font if you draw other text elsewhere
    // draw_set_font(font_default);
}

