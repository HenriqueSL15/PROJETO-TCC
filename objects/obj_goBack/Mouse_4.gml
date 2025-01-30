if(instance_exists(obj_shakeSetting) && instance_exists(obj_goBack)){
	instance_destroy(obj_shakeSetting)
		if(!instance_exists(obj_backToMenu) && !instance_exists(obj_exit) && !instance_exists(obj_settings) && !instance_exists(obj_volume)){
			for (var i = 0; i <= 3; i++) {
				if(i == 0){
					instance_create_layer(obj_background.x - obj_background.sprite_width / 2 + 165,obj_background.y + 130, "TEXTOS",objects[i])	
				}else if(i == 1){
					instance_create_layer(obj_background.x + obj_background.sprite_width / 2 - 200,obj_background.y + 150, "TEXTOS",objects[i])	
				}else if(i == 2){
					instance_create_layer(obj_background.x - obj_background.sprite_width / 2 + 200,obj_background.y + obj_background.sprite_height - 130, "TEXTOS",objects[i])	
				}else{
					instance_create_layer(obj_background.x + obj_background.sprite_width / 2 - 200,obj_background.y + obj_background.sprite_height - 150, "TEXTOS",objects[i])	
				}
			}
		}	
	instance_destroy()
}