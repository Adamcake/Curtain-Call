if(f <= 100) {
	for(i = 0; i < perline * 4; i += 1) {
		with(apples1[i]) { if(visible) { draw_self(); } }
	}
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	with(apples1[perline * 4 - 1]) { draw_self(); }
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	for(i = 0; i < perline; i += 1) {
		with(apples1[i]) { if(visible) { draw_self(); } }
	}
}

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
for(i = 0; i < perline * 4; i += 1) {
	with(apples2[i]) { if(visible) { draw_self(); } }
}
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
with(apples2[perline * 4 - 1]) { draw_self(); }
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
for(i = 0; i < perline; i += 1) {
	with(apples2[i]) { if(visible) { draw_self(); } }
}
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
