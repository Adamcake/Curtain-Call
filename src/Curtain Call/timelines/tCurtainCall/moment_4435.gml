/// @description: P4 pattern - left-side indicator #5
var a = instance_create(176, 64 + (4 * 96), part4p2SafetyIndicator);
if (self.p4safe == 4) {
	a.image_blend = 0xD34931;
} else {
	a.image_blend = 0x3134D3;
}
