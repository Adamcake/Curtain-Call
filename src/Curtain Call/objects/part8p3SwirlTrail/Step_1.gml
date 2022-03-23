image_xscale -= scaleDownSpeed;
image_yscale -= scaleDownSpeed;
image_alpha -= fadeSpeed;

if(image_xscale <= 0 || image_yscale <= 0 || image_alpha <= 0) instance_destroy();

