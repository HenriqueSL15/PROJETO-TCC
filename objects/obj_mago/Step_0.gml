if (hit){
	sprite_index = spr_mago_hit
	screenshake(1)	
	a = 0
	hit = false
}else{
	sprite_index = spr_mago
}

if(vida <= 0){
	room_restart()
}