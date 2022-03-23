draw_set_circle_precision(64);
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(0.03);
draw_circle(x, y, r, false);
if(r > 75) {
    draw_set_alpha(0);
    draw_circle(x, y, r - 75, false);
}
draw_set_alpha(1);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_set_colour(c_black);
draw_circle(x, y, r, false);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
