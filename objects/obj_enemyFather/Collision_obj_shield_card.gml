canCount = false
other.i++

if(other.i >= 300){
	canCount = true
	instance_destroy(other)
}

if(sprite_index == spr_enemy_archer_attacking || sprite_index == spr_enemy_archer_attacking_loop){
	sprite_index = spr_enemy_archer
	e = 0
}

if(sprite_index == spr_enemy_7_attacking || sprite_index == spr_enemy_7_sleeping ||  sprite_index == spr_enemy_7 ||  sprite_index == spr_enemy_7_transition){
	sprite_index = spr_enemy_7
}

if(sprite_index == spr_enemy_attacking){
	sprite_index = spr_enemy
}

if(sprite_index == spr_enemy2_attacking){
	sprite_index = spr_enemy2
}

if(sprite_index == spr_enemy3_attacking){
	sprite_index = spr_enemy3
}