if(instance_exists(player) && followPlayer) {
    x = player.x;
    y = player.y;
}

if(expand) {
    expansion += 0.4;
    spinSpeed += 0.1;
}

radius += growSpeed;
if(growSpeed > 0) growSpeed -= 0.25;

angleL -= spinSpeed;
angleR += spinSpeed;

var alpha = 1;
if(!ending) alpha = (radius + expansion) / 52.5;

if(ending != 3) {
    pinkCircle.x = x;
    pinkCircle.y = y;
    pinkCircle.image_alpha = alpha;
    pinkCircle.image_xscale = (radius + expansion) / 64;
    pinkCircle.image_yscale = (radius + expansion) / 64;
}

if(!ending) {
    for(var i = 0; i < 8; i++) {
        circlers[i].image_alpha = alpha;
        circlers[i].image_xscale = (radius * 0.003) + 1;
        circlers[i].image_yscale = circlers[i].image_xscale;
    }
}

for(var i = 0; i < 4; i++) {
    circlers[i].x = x + lengthdir_x(radius + expansion, angleL);
    circlers[i].y = y + lengthdir_y(radius + expansion, angleL);
    angleL += 360/4;
}

for(var i = 4; i < 8; i++) {
    circlers[i].x = x + lengthdir_x(radius + expansion, angleR);
    circlers[i].y = y + lengthdir_y(radius + expansion, angleR);
    angleR += 360/4;
}

if(ending == 1) {
    growSpeed -= 1.2;
    spinSpeed -= 3;
}
else if(ending == 2) {
    growSpeed += 1;
}
else if(ending == 3) {
    growSpeed += 1.2;
    spinSpeed += 0.05;
    
    dist = ((radius + expansion) * 1.05) + 10;
    with(introWrapper) {
        if((curl == 0) && (point_distance(other.x, other.y, x, y) < other.dist)) {
            curl = choose(2, -2);
            friction = -1.5;
            speed = 1;
            direction = point_direction(other.x, other.y, x, y);
        }
    }
    with(introWall) {
        if((curl == 0) && (point_distance(other.x, other.y, x, y) < other.dist)) {
            curl = choose(2, -2);
            friction = -1.5;
            speed = 1;
            direction = point_direction(other.x, other.y, x, y);
        }
    }
}

