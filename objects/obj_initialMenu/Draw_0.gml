var dist = 175;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2 + gui_largura / 15;
var y1 = gui_altura / 2.5;
var target_zoom = 0.2; // Escala alvo para o zoom
var normal_scale = 0.1;  // Escala normal dos botões
var zoom_speed = 0.05; // Velocidade de transição do zoom

// Tamanho dos botões, ajuste conforme o tamanho do seu sprite
var button_width = sprite_get_width(sprites[0]);
var button_height = sprite_get_height(sprites[0]);

if (initialMenu) {
    draw_sprite(spr_initialMenu, 0, 0, 0);
} else if(!initialMenu){
    for (var i = 0; i < op_max; i++) {
        instance_create_layer(x1, y1 + (dist * i), "Instances", opcoes[i])
    }
}




/*
var dist = 150
var gui_largura = display_get_gui_width()
var gui_altura = display_get_gui_height()
var x1 = gui_largura / 2
var y1 = gui_altura / 3

var zoom_scale = 1.2;

var button_width = sprite_get_width(spr_menuButtons);
var button_height = sprite_get_height(spr_menuButtons);

if(initialMenu){
	draw_sprite(spr_initialMenu, 0, 0, 0)
}else{
	for (var i = 0; i < op_max; i++) {
        // Calcula a posição do botão
        var button_x = x1 - (button_width / 2);
        var button_y = y1 + (dist * i) - (button_height / 2);

        // Verifica se o mouse está sobre o botão
        if (mouse_x > button_x && mouse_x < button_x + button_width &&
            mouse_y > button_y && mouse_y < button_y + button_height) {
            
            // Desenha o sprite com zoom
            draw_sprite_ext(spr_menuButtons, i, x1, y1 + (dist * i), zoom_scale, zoom_scale, 0, c_white, 1);
        } else {
            // Desenha o sprite normalmente
            draw_sprite(spr_menuButtons, i, x1, y1 + (dist * i));
        }
    }

	/*
	for(var i = 0;i < op_max;i++){
		draw_sprite(spr_menuButtons,i,x1,y1+(dist * i))
	}
	
	
	
}