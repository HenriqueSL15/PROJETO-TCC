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
		}
		
	if (x == pos[3]){
		ticks = 40
		instance_create_layer(x,y-90,"habilidades",obj_flecha)
		//sprite_ipndex = spr_enemy_attacking
		show_debug_message(obj_mago.vida)
	}else{
		ticks = 80
	}

	a = 0

	}
}else{
	instance_destroy()	
}
