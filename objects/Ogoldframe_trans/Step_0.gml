if (!place_meeting(x, y, Omcfront)) {
    can_switch = false; // Disable interaction if the player leaves
}

if (can_switch && keyboard_check_pressed(ord("E"))) {
    room_goto(Goldenroom); // Replace "room2" with your target room
}
