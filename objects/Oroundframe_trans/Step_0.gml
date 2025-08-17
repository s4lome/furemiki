// Check if the player is near the object
if (place_meeting(x, y, Omcfront)) {
    // Check if the player presses the "E" key
    if (keyboard_check_pressed(ord("E"))) {
        // Move to the assigned room (e.g., Eyeballroom)
        room_goto(Eyeballroom); // Replace "Eyeballroom" with your desired room
    }
}
