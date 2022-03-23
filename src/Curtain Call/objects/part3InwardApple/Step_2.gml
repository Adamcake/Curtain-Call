var dist = point_distance(x, y, part3CircleCenter.x, part3CircleCenter.y);
if(dist > startdistance) {
    image_xscale = dist / startdistance;
    image_yscale = dist / startdistance;
} else {
    image_xscale = 1;
    image_yscale = 1;
}
