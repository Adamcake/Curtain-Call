/// @description  Init

sprite_index = noone;
timer = 0;

init();

if(!shaders_are_supported() || !shader_is_compiled(shSpotlight) || !shader_is_compiled(shDoughnut) || !shader_is_compiled(shRadius)) {
	room_goto(rNoShaders);
} else {
	room_goto(rTitle);
}
