/// @description  Platform Magic
// It's the standard, bad implementation we all know and love

if (global.pGravity) {
    if (y - vspeed / 2 <= other.y) {
        if (other.vspeed >= 0) {
            y = other.y - 9;
            vspeed = other.vspeed;
            djump = true;
        }
        onPlatform = true;
        djump = true;
    }
} else {
    if (y - vspeed / 2 >= other.y + 15) {
        if (other.vspeed >= 0) {
            y = other.y + 23;
            vspeed = other.vspeed;
            djump = true;
        }
        onPlatform = true;
        djump = true;
    }
}


