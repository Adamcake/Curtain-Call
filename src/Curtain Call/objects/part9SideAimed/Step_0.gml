var a = instance_create(x, y, trail);
a.sprite_index = sprite_index;
a.image_index = image_index;
a.image_blend = image_blend;
a.image_xscale = image_xscale;
a.image_yscale = image_yscale;
a.image_angle = image_angle;
a.depth = depth - 1;
a.fadeSpeed = 0.07;

image_angle += rot;