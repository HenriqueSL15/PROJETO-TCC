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
		}
	}else{
		if(x == pos[0]){
			sprite_index = spr_enemy_7_transition
			canCount = false
		}else if(x == pos[1]){
//			image_index = 0
			x = pos[2]
		}else if(x == pos[2]){
//			image_index = 1
			x = pos[3]
		}else if(x == pos[3]){
//			image_index = 0
			x = pos[4]
		}
	
		
	if (x == pos[4] && damage == true){
		ticks = 200
		obj_mago.vida -= dano
		obj_mago.bigHit = true
		image_index = 0
		a = 1
		sprite_index = spr_enemy_7_attacking
		damage = false
	}else if (x == pos[4] && damage == false){
		ticks = 500
		image_index = 0 
	}else{
		//sprite_index = spr_enemy_7
		ticks = 1
	}
	a = 0

	}
}else{
	instance_destroy()	
}

if(image_speed == 0 && !place_meeting(x,y,obj_teleport_card)){
	damage = true
	image_speed = 1
	a = 1
}