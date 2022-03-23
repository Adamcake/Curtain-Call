// It draws doughnuts. Parent this object to draw doughnuts
doughnut_r = 0;
doughnut_lastr = 0;
ending = false;
doughnut_uniform_center = shader_get_uniform(shDoughnut, "v_Center");
doughnut_uniform_radius = shader_get_uniform(shDoughnut, "v_Radius");
doughnut_uniform_end = shader_get_uniform(shDoughnut, "v_End");
