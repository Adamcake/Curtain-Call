/// @description  Collision (No Solids!)
/// @param No Solids!

// Move back to before hsp/vsp was applied
x = xprevious;
y = yprevious;

// Snap to blocks Horizontally
if (instance_place(x + hspeed, y, block)) {
    if (global.pGravity) {
        if (hspeed <= 0) while (instance_place(x - 1, y, block) == noone) x -= 1;
        if (hspeed > 0) while (instance_place(x + 1, y, block) == noone) x += 1;
    } else {
        if (hspeed < 0) while (instance_place(x - 1, y, block) == noone) x -= 1;
        if (hspeed >= 0) while (instance_place(x + 1, y, block) == noone) x += 1;
    }
    hspeed = 0;
}

// Snap to blocks Vertically
if (instance_place(x, y + vspeed, block)) {
    if (global.pGravity == 1) {
        if (vspeed <= 0) while (instance_place(x, y - 1, block) == noone) y -= 1;
        if (vspeed > 0) {
            while (instance_place(x, y + 1, block) == noone) y += 1;
            djump = true;
        }
    } else {
        if (vspeed <= 0) {
            while (instance_place(x, y - 1, block) == noone) y -= 1;
            djump = true;
        }
        if (vspeed > 0) while (instance_place(x, y + 1, block) == noone) y += 1;
    }
    vspeed = 0;
}


if (instance_place(x + hspeed, y + vspeed, block)) hspeed = 0;

// Apply remaining hsp/vsp that we took at the start
x += hspeed;
y += vspeed;


