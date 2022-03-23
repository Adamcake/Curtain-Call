/// @description  Go to room
if (room_exists(roomTo)) {
    if (autoNext) global.autosave = true;
    with(player) instance_destroy();
	if(roomTo == rBoss && (!shaders_are_supported() || !shader_is_compiled(shSpotlight) || !shader_is_compiled(shDoughnut))) {
		room_goto(rNoShaders);
	} else {
		room_goto(roomTo);
	}
} else {
    show_debug_message("Room in roomSwitch does not exist: " + string(roomTo));
    instance_destroy();
}
