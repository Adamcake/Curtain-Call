/// @description  Movement

var h, onBlock, onConveyor, onVineL, onVineR;
h = 0; // Default (player not moving)

// Checking input
if (global.lrAnywhere) {
    l = keyboard_check_direct(global.k_left);
    r = keyboard_check_direct(global.k_right);
} else {
    l = keyboard_check(global.k_left);
    r = keyboard_check(global.k_right);
}

if (!frozen) {
    if (r) h = 1;
    else if (l) h = -1;
}

// Collision checks
onBlock = instance_place(x, y + global.pGravity, block);
onConveyor = instance_place(x, y + global.pGravity, conveyor);
onVineL = place_meeting(x - 1, y, vineL) && !onBlock;
onVineR = place_meeting(x + 1, y, vineR) && !onBlock;

// Movement
if (h != 0) {
    if (!onVineL && !onVineR) dir = h; // Setting the direction the player is facing
    hspeed = hscap * h; // Setting speed
    sprite_index = sRun; image_speed = 0.5; // Running sprite
} else {
    hspeed = 0; // Stop moving
    sprite_index = sIdle; image_speed = 0.2; // Idle sprite
}

// Platform Magic
if (!onPlatform) {
    if (vspeed * global.pGravity < -0.05) sprite_index = sJump;
    else if (vspeed * global.pGravity > 0.05 ) sprite_index = sFall;
} else {
    if (!place_meeting(x, y + (4 * global.pGravity), platform)) onPlatform = false;
}

if (onConveyor) hspeed += onConveyor.cspeed; // Conveyor Magic
if (abs(vspeed) > vscap) vspeed = sign(vspeed) * vscap; // Vspeed capping

if (onVineL || onVineR) {
    if (onVineR) dir = -1; else dir = 1; // Setting (inverse) player direction
    vspeed = 2 * global.pGravity; // Setting sliding speed
    sprite_index = sSlide; image_speed = 0.5; // Sliding sprite
    
    if ((onVineL && keyboard_check_pressed(global.k_right)) ||
        (onVineR && keyboard_check_pressed(global.k_left))) {
        if (keyboard_check(global.k_jump)) {
            // Jumping off from vines
            if (onVineR) hspeed = -15; else hspeed = 15; // Jumpoff hspeed
            vspeed = -9 * global.pGravity; // Jumpoff vspeed
            play_sound(seJump3); // Play vine-jump sound
            sprite_index = sJump; // Jumping sprite
        } else {
            // Falling off from vines
            if (onVineR) hspeed = -3; else hspeed = 3;
            sprite_index = sFall;
        }
    }
}

if (!frozen) {
    if (global.debug) {
        if (global.adTrick && onBlock) {
            if (keyboard_check_pressed(ord("A"))) hspeed -= 1;
            else if (keyboard_check_pressed(ord("D"))) hspeed += 1;
        }
    
        if (keyboard_check(global.k_debug_drag) || mouse_check_button(global.k_debug_dragmouse)) {
            x = mouse_x; y = mouse_y; vspeed = 0;
        }
    }
    if (keyboard_check_pressed(global.k_jump)) {
        if (place_meeting(x, y + global.pGravity, block)
            || place_meeting(x, y + global.pGravity, platform)
            || place_meeting(x, y + global.pGravity, water)
            || onPlatform)
        {
            vspeed = -jump1; // First jump
            djump = true; // Make sure you can djump afterwards
            play_sound(seJump); // Jump sound
        } else if (djump || place_meeting(x, y + global.pGravity, water2) || global.infiniteJump) {
            djump = place_meeting(x, y + global.pGravity, water3);
            vspeed = -jump2; // Doublejump
            sprite_index = sJump; // Jumping sprite
            play_sound(seJump2); // Djump sound
        }
    }
    if (keyboard_check_released(global.k_jump)) {
        if (vspeed * global.pGravity < 0) vspeed *= 0.45; // Jump released
    }
    if (keyboard_check_pressed(global.k_shoot)) {
        if (instance_number(bullet) < global.bulletCap) {
            with (instance_create(x, y, bullet)) { // Create bullet
                hspeed = other.dir * 16; // Set speed (16px/f)
                alarm[0] = 40; // Destroy in 40 frames
                play_sound(seShoot); // Play sound
            }
        }
    }
    if (keyboard_check_pressed(global.k_suicide) && global.canSuicide) die();
}

// Water Physics
if (place_meeting(x, y, water) || place_meeting(x, y, water2)) {
    if ((vspeed * global.pGravity) > 2) vspeed = 2 * global.pGravity;
}

// Room Edge - Death, Switching or Wrapping
if (global.wrapPlayerX || global.wrapPlayerY) {
    if (global.wrapPlayerX) {
        if (x > room_width) x -= room_width;
        else if (x < 0) x += room_width;
    }
    if (global.wrapPlayerY) {
        if (y > room_height) y -= room_height;
        else if (y < 0) y += room_height;
    }
}

var intersect = false;
if (!global.wrapPlayerX) {
    if (x > room_width) intersect = true;
    else if (x < 0) intersect = true;
}
if (!global.wrapPlayerY) {
    if (y > room_height) intersect = true;
    else if (y < 0) intersect = true;
}

if (intersect) {
    if (instance_exists(intersectSwitch)) {
        with (instance_find(intersectSwitch, 0)) {
            if (!roomTo) die(); // If roomTo is noone, it's not set up. Die.
            if (autoNext) global.autosave = true; // Autosaving if set
            room_goto(roomTo);
        }
        
        instance_destroy(); // Destroy player, will be created by playerStart
    } else if (global.killPlayerOnEdge && !instance_exists(bossNoEdgeKill)) {
        die(); // If there's no intersectSwitch, just die
    }
}


