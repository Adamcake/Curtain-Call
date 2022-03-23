/// @description  Activation

if (!triggered && global.triggers[group]) {
    if (spd != 0) {
        speed = spd;
        direction = dir;
    } else if (hsp != 0 || vsp != 0) {
        vspeed = vsp;
        hspeed = hsp;
    }
    
    triggered = true;
}


