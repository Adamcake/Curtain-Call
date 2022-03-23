shader_set(shSpotlight);
shader_set_uniform_f(uniform_center, x, y);
shader_set_uniform_f(uniform_radius, r);
shader_set_uniform_f(uniform_edgesize, edgesize);
draw_sprite_ext(sPixelBlend, 0, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.WView, 0), __view_get(e__VW.HView, 0), 0, col, 1.0);
with(part6SpotParticle) { draw_self(); }
shader_reset();
