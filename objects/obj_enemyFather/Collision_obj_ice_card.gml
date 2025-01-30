randomize()
value = 0
canCount = false
other.i++
if(other.i == 600){
	canCount = true
	instance_destroy(other)
}

if(other.i % 6 == 0){
	value = irandom(9)
	show_debug_message(value)	
}

if(value == 5){
	canCount = true
	if (other.i <= 540){
		other.i = 540	
	}
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
