var dist = 150;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura / 3;
var target_zoom = 0.2; // Escala alvo para o zoom
var normal_scale = 0.1;  // Escala normal dos botões
var zoom_speed = 0.05; // Velocidade de transição do zoom

// Tamanho dos botões, ajuste conforme o tamanho do seu sprite
var button_width = sprite_get_width(sprites[0]);
var button_height = sprite_get_height(sprites[0]);

if(global.paused && obj_mago.vida > 0){
	/*
	draw_set_color(c_black)
	for(var i = 0; i < sprite_get_number(spr_background);i++){
		draw_sprite(spr_background,i,0,0)
		show_debug_message(i)
	}
//	draw_rectangle(0,0,maxWidth,maxHeight,0)
*/
   if(!instance_exists(obj_background)){
		instance_create_layer(x1 + 130, 70,"PAUSA",obj_background)
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
   }


}else{
	if(instance_exists(obj_background)){
		instance_destroy(obj_background)
		if(instance_exists(obj_linha)){
			instance_destroy(obj_linha)
		}
		for(var j = 0;j <= 3; j++){
			instance_destroy(objects[j])
		}
		
	}
}