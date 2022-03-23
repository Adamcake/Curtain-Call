if(go) {
    speed += 0.32;
    s = !s;
    if(s) {
        var a = instance_create(x, y, trail);
        a.sprite_index = sprite_index;
        a.image_blend = image_blend;
        a.depth = depth - 1;
    }
}

