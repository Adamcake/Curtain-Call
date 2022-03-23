/// @description  Keys

// Restarts after death
if (keyboard_check_pressed(global.k_restart) && room != rInit && room != rTitle && room != rNoShaders) {
    reset_triggers();
    load(false, false);
}

// Exit game
if (keyboard_check_pressed(global.k_exit)) {
    // You might wanna add some stuff instead of instantly closing here ...
    game_end();
}

// Soft reset
if (keyboard_check_pressed(global.k_reset)) {
    ds_map_destroy(global.saveData); // Clear save ds_map
    with(all) instance_destroy(); // Destroy all instances
    room_goto(rInit); // Goto init
}

// Toggle fullscreen
if (keyboard_check_pressed(global.k_fullscreen)) {
    window_set_fullscreen(!window_get_fullscreen());
}

// Debug hotkeys
if (global.debug) {
    // Godmode
    if (keyboard_check_pressed(global.k_debug_god)) {
        global.god = !global.god;
    }
    
    // Save state
    //if (keyboard_check_pressed(global.k_debug_save)) {
    //    save(true);
    //    play_sound(seShoot);
    //}
    
    // Flip gravity
    //if (keyboard_check_pressed(global.k_debug_flip)) {
    //    flip();
    //}
    
    // Set FPS
    if (keyboard_check_pressed(global.k_debug_fps)) {
        var newFps = get_integer("FPS:", global.engineFPS);
        if (newFps >= 1) {
            global.engineFPS = newFps;
            room_speed = global.engineFPS;
        }
    }
    
    // Room--
    //if (keyboard_check_pressed(global.k_debug_decreaserm)) {
    //    if (room_exists(room - 1)) {
    //        if (room - 1 != rInit)
    //            room_goto(room - 1);
    //    }
    // Room++
    //} else if (keyboard_check_pressed(global.k_debug_advancerm)) {
    //    if (room_exists(room + 1)) room_goto(room + 1);
    //}
    
    // Reveal hitbox
    if (keyboard_check_pressed(global.k_debug_hitbox)) {
        global.drawHitbox = !global.drawHitbox;
    }
    
    // Debug UI Toggle
    if (keyboard_check_pressed(global.k_debug_toggleui)) {
        global.debugGui = !global.debugGui;
    }
    
    // V-Align setter is in player step
}


