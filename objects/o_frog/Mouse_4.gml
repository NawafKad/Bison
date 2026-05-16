instance_create_depth(x, y, 0, o_splatter);
global.kills++;
audio_play_sound(sniper, 0, false, 1, 0, random_range(0.8, 1.5));
instance_destroy();