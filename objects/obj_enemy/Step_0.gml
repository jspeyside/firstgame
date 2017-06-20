/// @description Move towards player

if (instance_exists(obj_player)) {
	move_towards_point(obj_player.x, obj_player.y, spd);

}
image_angle = direction;

// Destroy on 0 hp
if (hp <= 0) {
	instance_destroy();
	with(obj_score) {
		_score += 5;
	}
	audio_sound_pitch(snd_death, random_range(0.8, 1.2));
	audio_play_sound(snd_death, 0, false);
}