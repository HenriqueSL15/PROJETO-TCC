if(room == Menu){
	image_alpha = 0
}else{
	image_alpha = 1	
}

if (global.paused) {
    return;
}
if(canHit){
	if (hit){
		sprite_index = spr_mago_hit
		screenshake(10)	
		a = 0
		hit = false
	}else if(bigHit){
		sprite_index = spr_mago_hit
		screenshake(75)	
		a = 0
		bigHit = false
	}else if(smallHit){
		screenshake(5)	
		a = 0
		smallHit = false
	}else{
		sprite_index = spr_mago	
	}
}
if(vida <= 0 && b == 0){
	bigHit = true
	if(alarm[1] < 0){
		alarm[1] = 30
	}
	b = 1
}