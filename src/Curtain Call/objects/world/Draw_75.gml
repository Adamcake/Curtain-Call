/// @description  Debug UI

if (global.debugGui) {
    if (instance_number(player) > 0) {
        draw_debug_ui(instance_find(player, 0), 5, 5, c_white, debugFont);
        
        // For multiple players you could add another one here but find(player, 1) etc
    }
}


