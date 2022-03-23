/// @description: P4 pattern - left-side indicator #2
var a = instance_create(176, 64 + (1 * 96), part4p2SafetyIndicator);
if (self.p4safe == 1) {
	a.image_blend = 0xD34931;
} else {
	a.image_blend = 0x3134D3;
}
