if(y < -(r + 10)) {
	for(var i = 0; i < 30; i += 1) {
		instance_destroy(apples[i]);
	}
	instance_destroy();
}
