shader_set(shDoughnut);
shader_set_uniform_f(doughnut_uniform_center, x, y);
shader_set_uniform_f(doughnut_uniform_radius, doughnut_r);
shader_set_uniform_f(doughnut_uniform_end, doughnut_lastr);
draw_sprite_ext(sPixelBlend, 0, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.WView, 0), __view_get(e__VW.HView, 0), 0, c_black, 1.0);
shader_reset();
