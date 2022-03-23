var _y = 3;
repeat(4) {
    instance_create((32*11)+16, (32*_y)+8, part4p2FloorApple);
    instance_create((32*13)+16, (32*_y)+8, part4p2FloorApple);
    _y += 4;
}

