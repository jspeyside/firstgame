/// @description Move towards player

if (instance_exists(obj_player)) {
	move_towards_point(obj_player.x, obj_player.y, spd);

}
image_angle = direction;

// Destroy on 0 hp
if (hp <= 0) {
	instance_destroy();
}