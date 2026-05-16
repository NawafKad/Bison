if (place_meeting(x, y + 2, o_ground)) {
	physics_apply_impulse(x, y, irandom_range(-100, 100), -600);
	image_index = 1
	alarm[0] = 10;
	audio_play_sound(croak, 0, false, 1, 0, random_range(0.8, 1.5));

}