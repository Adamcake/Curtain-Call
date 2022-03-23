/// @description: attach to killer objects
if(!stopped && frames > 1 && other.visible) {
    stopped = true;
    speed = 0;
    gravity = 0;
    
    following = other.id;
    follow_offsetx = (x - other.x) / other.image_xscale;
    follow_offsety = (y - other.y) / other.image_yscale;
	depth = other.depth - 1;
	instance_change(bloodFollowing, true);
}

