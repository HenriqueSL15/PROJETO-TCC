if (sprite_index == spr_fireball_new_attack_loop){
	sprite_index = spr_fire_ball_attack_loop
	image_xscale = 1
	image_yscale = 1
}

if(sprite_index == spr_fire_ball_attack){
	sprite_index = spr_fire_ball_attack_loop	
}
if (sprite_index == spr_fire_ball_attack_loop){
	instance_destroy()	
}