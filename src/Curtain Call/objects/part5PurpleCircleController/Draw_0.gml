var i;
for(i = 0; i < count; i += 1) {
	with(apples1[i]) { draw_self(); }
}

if(f < 62) {
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	with(apples1[count - 1]) { draw_self(); }
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	for(i = 0; i < floor(count / 3); i += 1) {
		with(apples1[i]) { draw_self(); }
	}
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}

for(i = 0; i < count; i += 1) {
	with(apples2[i]) { draw_self(); }
}

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
with(apples2[count - 1]) { draw_self(); }
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
for(i = 0; i < floor(count / 3); i += 1) {
	with(apples2[i]) { draw_self(); }
}
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
