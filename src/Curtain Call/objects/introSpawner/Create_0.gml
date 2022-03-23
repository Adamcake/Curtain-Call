radius = 0;
spinSpeed = 1.6;
growSpeed = 5;
angleL = random(360);
angleR = random(360);
expand = false;
expansion = 0;
ending = 0;
followPlayer = true;
pinkCircle = instance_create(x, y, introPinkCircle);
colourerGrowSpeed = 0.03;

for(var i = 0; i < 8; i++) {
    circlers[i] = instance_create(x, y, introCircler);
    circlers[i].image_alpha = 0;
}

