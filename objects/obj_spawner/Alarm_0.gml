var spawn_x = random(room_width)
var spawn_y = random(room_height)
instance_create_layer(spawn_x, spawn_y, "Enemies", obj_enemy_spawn);

alarm[0] = spawn_rate;
