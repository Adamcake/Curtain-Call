/// @description  Create Player
if (!instance_exists(player)) {
    instance_create(x + 17 * image_xscale, y + 23, player);
    
    // Invert horizontally in editor to spawn facing left
    if (image_xscale < 0) with(player) dir = -1;
}

instance_destroy();


