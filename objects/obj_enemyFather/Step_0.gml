if(life > 0){
	show_debug_message(a)
	if(a < 100){
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
		a = 0
	}
}else{
	instance_destroy()	
}