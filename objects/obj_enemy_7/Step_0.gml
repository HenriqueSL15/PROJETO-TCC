if(life > 0){

	if(instance_exists(obj_wikipedia)){
		canCount = false
	}else if(!instance_exists(obj_wikipedia) && canCount){
		canCount = true
	}
	if(a < ticks){
		if(canCount){
			a++
		}
	}else{
		if(x == pos[0]){
			sprite_index = spr_enemy_7_transition
			canCount = false
		}else if(x == pos[1]){
			x = pos[2]
		}else if(x == pos[2]){
			x = pos[3]
		}else if(x == pos[3]){
			x = pos[4]
		}
		
	if (x == pos[4] && damage == true){
		ticks = 100
		obj_mago.vida -= 9
		obj_mago.hit = true
		image_index = 0
		sprite_index = spr_enemy_7_attacking
		damage = false
	}else if (x == pos[4] && damage == false){
			ticks = 100
		obj_mago.vida -= 3
		obj_mago.hit = true
		image_index = 0 
		sprite_index = spr_enemy_7_attacking
	}else{
		//sprite_index = spr_enemy_7
		ticks = 30
	}
	a = 0

	}
}else{
	instance_destroy()	
}

