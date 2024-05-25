if(life > 0){
	if(x == pos[4] && a < ticks / 2){
		image_index = 0
	}else{
		image_index = 1	
	}
	if(instance_exists(obj_wikipedia)){
		canCount = false
	}else if(!instance_exists(obj_wikipedia) && canCount){
		canCount = true
	}
	if(a < ticks){
		if(canCount){
			a++
		}else{
			sprite_index = spr_enemy3
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
		ticks = 60
		obj_mago.vida -= 3
		obj_mago.hit = true
		sprite_index = spr_enemy3_attacking
	}else{
		sprite_index = spr_enemy3
		ticks = 200
	}

	a = 0

	}
}else{
	instance_destroy()	
}
