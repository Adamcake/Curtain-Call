s = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
if(surface_exists(s)) {
	surface_copy(s, 0, 0, application_surface);
}
f = 0;
depth = -100;
