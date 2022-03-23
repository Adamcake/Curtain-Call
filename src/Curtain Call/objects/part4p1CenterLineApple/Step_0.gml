if(t) {
    with(instance_create(x, y, trail)) {
        sprite_index = other.sprite_index;
        image_blend = other.image_blend;
        image_alpha = 0.4;
        depth = other.depth + 1;
    }
}
image_angle += rotspeed;

