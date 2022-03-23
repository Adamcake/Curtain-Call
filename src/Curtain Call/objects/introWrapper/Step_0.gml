if(slow == 1) {
    friction += 0.04;
    scaleSpeed += 0.02;
}
else if(slow == 2) {
    friction -= 0.04;
    scaleSpeed -= 0.02;
}

scaleSpeed += scaleAccel;
image_xscale += scaleSpeed;
image_yscale += scaleSpeed;

if(curl != 0) {
    direction += curl;
}

