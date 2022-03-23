/// @description: P10 spawn central spiral
with(part10BigSpinner) { instance_destroy(); }
instance_create(room_width / 2, room_height / 2, part10TripleController);
