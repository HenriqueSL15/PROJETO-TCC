if (global.paused) {
	image_speed = 0
    return;
}else {
	image_speed = 1
}

if(life > 0){
	if(instance_exists(obj_wikipedia)){
		canCount = false
	}else if(!instance_exists(obj_wikipedia) && canCount){
		canCount = true
	}
	if(a < ticks){
		if(canCount){
			a++
		}else{
			sprite_index = spr_enemy	
		}
	}else{
		if(x == pos[0]){
			x = pos[1]
		}else if(x == pos[1]){
			x = pos[2]
		}else if(x == pos[2]){
			x = pos[3]
		}else if(x == pos[3]){
			x = pos[4]
		}
		
	if (x == pos[4]){
		ticks = 30
		obj_mago.vida -= dano
		obj_mago.hit = true
		sprite_index = spr_enemy_attacking
		show_debug_message(obj_mago.vida)
	}else{
		sprite_index = spr_enemy
		ticks = 140
	}

	a = 0

	}
}else{
	instance_destroy()	
}
