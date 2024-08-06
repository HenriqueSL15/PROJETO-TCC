if(sprite_index == spr_enemy_archer_attacking){
	sprite_index = spr_enemy_archer_attacking_loop
}
if(sprite_index == spr_enemy_archer_attacking_loop){
	instance_create_layer(x-30,y-170,"habilidades",obj_flecha)	
}