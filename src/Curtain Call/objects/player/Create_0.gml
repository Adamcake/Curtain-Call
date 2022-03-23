/// @description  Initialization

l = 0;
r = 0;

// Instance Variables
gravity = 0.4 * global.pGravity;
jump1 = 8.5 * global.pGravity;
jump2 = 7 * global.pGravity;
onPlatform = false;
image_speed = 0.2;
frozen = false;
djump = false;
hscap = 3;
vscap = 9;
set_mask();
dir = 1;

// Autosaving
if (global.autosave) save(true);
global.autosave = false;

// Custom sprites should be set here
sFall  = sPlayerFall;
sIdle  = sPlayerIdle;
sJump  = sPlayerJump;
sRun   = sPlayerRunning;
sSlide = sPlayerSliding;

sprite_index = sIdle; // Ensuring it's the right sprite from creation

depth = -5;
