if (global.paused) {
	image_speed = 0
    return;
}else {
	image_speed = 1
}

if(life > 0){
	/*
	if(x == pos[4] && a < ticks / 2){
		image_index = 0
	}else if(x == pos[4] && a < ticks){
		image_index = 1	
	}
	*/
	if(instance_exists(obj_wikipedia)){
		canCount = false
	}else if(!instance_exists(obj_wikipedia) && canCount){
		canCount = true
	}
	if(a < ticks){
		if(canCount){
			a++
		}else{
			
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
		sprite_index = spr_enemy3_attacking
		ticks = 120
		obj_mago.vida -= dano
		obj_mago.hit = true
	}else{
		sprite_index = spr_enemy3
		ticks = 200
	}
	
	a = 0

	}
}else{
	instance_destroy()	
}
