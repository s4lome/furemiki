if (place_meeting(x, y, Omcfront) && keyboard_check_pressed(ord("E"))) {
    room_goto(target_room); // Move to the target room
    Omcfront.x = target_x;  // Set new position for Omcfront
    Omcfront.y = target_y;
}