if(life > 0){
	if(a < ticks){
		if(canCount){
			a++
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
		obj_mago.vida -= 1
		obj_mago.hit = true
		sprite_index = spr_enemy_attacking
		show_debug_message(obj_mago.vida)
	}else{
		ticks = 100
	}

	a = 0

	}
}else{
	instance_destroy()	
}
