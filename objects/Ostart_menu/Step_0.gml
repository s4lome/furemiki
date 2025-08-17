if (!show_help) {
    // normal menu navigation
    if (keyboard_check_pressed(vk_up)) {
        selected = max(0, selected - 1);
    }
    if (keyboard_check_pressed(vk_down)) {
        selected = min(array_length(menu_options)-1, selected + 1);
    }
    if (keyboard_check_pressed(vk_enter)) {
        switch (selected) {
            case 0: room_goto(StartingRoom); break;
            case 1: show_help = true; break; // open help
            case 2: game_end(); break;
        }
    }
} else {
    // help is visible → close with Esc
    if (keyboard_check_pressed(vk_escape)) {
        show_help = false;
    }
}

