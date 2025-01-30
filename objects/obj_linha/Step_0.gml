if(global.paused && obj_mago.vida <= 0){
	if(image_alpha < 1){
		image_alpha+=0.03
	}else if(!instance_exists(obj_duck)){
		instance_create_layer(
		800,
		display_get_height() / 2 - sprite_get_height(spr_duck) * 0.2,
		"MORTE",
		obj_duck
		)
	
		instance_create_layer(
		400,
		display_get_height() / 2 + display_get_height() * 0.2,
		"MORTE",
		obj_restartButton
		)
	
		instance_create_layer(
		1200,
		display_get_height() / 2 + display_get_height() * 0.2,
		"MORTE",
		obj_menuButton
		)
	}
	image_xscale = 1000
	image_yscale = 1000
}