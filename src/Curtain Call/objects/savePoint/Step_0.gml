/// @description  Save

if (
    /* Bullet Contact */ (place_meeting(x, y, bullet) && !global.sSaves) ||
    /* Shoot while Contact */ (place_meeting(x, y, player) && keyboard_check(global.k_shoot) && !global.sSaves) ||
    /* S Saves */ ((global.sSaves && keyboard_check(global.k_save)) && place_meeting(x, y, player))) {
    if (!cooldown && instance_exists(player) && global.pGravity == grav) {
        cooldown = true;
        alarm[0] = 30;
        image_index = 1;
        image_speed = 0.017;
        save(true);
    }
}


/* */
/*  */
