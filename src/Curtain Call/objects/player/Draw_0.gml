/// @description  Drawing Self & Hitbox

var xd, yd, a; xd = x; yd = y;
if (!global.pGravity) yd += 1.0;

yd = round(yd); // crispy GM8-like rounding (mm)

if (global.god)
    a = 0.7;
else
    a = 1.0;

if (global.drawPlayer)
    draw_sprite_ext(sprite_index, image_index, xd, yd, image_xscale * dir,
        image_yscale * global.pGravity, image_angle, image_blend, a);

if (global.drawHitbox)
    draw_sprite_ext(mask_index, image_index, x, y, image_xscale,
        image_yscale, image_angle, image_blend, a * 0.8);

draw_set_colour(c_white);
