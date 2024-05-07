image_speed = 0
image_index = 3
if (sprite_index == spr_shield){
	if (i < 60) {
		i++
	}else{
		i = 0
		instance_destroy()	
	}
}