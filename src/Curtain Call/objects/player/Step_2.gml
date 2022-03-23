/// @description  Debug: Change V-Align

if (!frozen) {
    if (keyboard_check_pressed(global.k_debug_valign) && global.debug) {
        var vf = floor(y);
        var va = y - vf;
        var newVa = get_integer("New V-Align:", va);
        if (newVa >= 0) {
            y = vf + newVa;
        }
    }
}


