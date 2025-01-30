if (global.paused) {
	image_speed = 0
    return;
}else {
	image_speed = 1
}
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
		}else if(x == pos[1]){
			x = pos[2]
		}else if(x == pos[2]){
			x = pos[3]
		}
		
	if (x == pos[3]){
		ticks = 145
		if(e == 0){
			e = 1
			sprite_index = spr_enemy_archer_attacking
		}
	}else{
		ticks = 80
	}

	a = 0

	}
}else{
	instance_destroy()	
}
