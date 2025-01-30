a += 1
if(sprite_index == spr_enemy_7_transition){
	sprite_index = spr_enemy_7_running
	x = pos[1]
	canCount = true
}

if(sprite_index == spr_enemy_7_attacking){
	sprite_index = spr_enemy_7_sleeping
}else if(sprite_index == spr_enemy_7_sleeping){
	obj_mago.vida -= 3
	obj_mago.bigHit = true
	sprite_index = spr_enemy_7_attacking
	
}