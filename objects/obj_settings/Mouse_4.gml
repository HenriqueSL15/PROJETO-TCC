if(instance_exists(obj_backToMenu) && instance_exists(obj_volume) && instance_exists(obj_exit) && instance_exists(obj_settings)){
	instance_destroy(obj_backToMenu)
	instance_destroy(obj_settings)
	instance_destroy(obj_exit)
	instance_destroy(obj_volume)
	
	if(!instance_exists(obj_shakeSetting) && !instance_exists(obj_goBack)){
		if(!obj_allRooms.skiped){
			instance_create_layer(obj_background.x + obj_background.sprite_width * 0.35,obj_background.y + sprite_width / 2,"TEXTOS",obj_shakeSetting)
			instance_create_layer(obj_background.x,obj_background.y + obj_background.sprite_height - 80,"TEXTOS",obj_goBack)
		}else{
			instance_create_layer(obj_background.x + obj_background.sprite_width * 0.35,obj_background.y + sprite_width / 2,"TEXTOS",obj_shakeSetting)
			instance_create_layer(obj_background.x,obj_background.y + obj_background.sprite_height - 80,"TEXTOS",obj_goBack)
		}
	}
}