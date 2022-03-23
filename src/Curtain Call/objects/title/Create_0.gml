f = 0;
d = random(360);

uniform_center = shader_get_uniform(shRadius, "v_Center");
uniform_radius = shader_get_uniform(shRadius, "v_Radius");
uniform_edgesize = shader_get_uniform(shRadius, "v_EdgeSize");
