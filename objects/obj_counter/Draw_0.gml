// Defina a posição x e y onde o texto será desenhado
if(!obj_allRooms.skiped){
	var x_pos = 1250;
	var y_pos = 50;
}else{
	var x_pos = 1250;
	var y_pos = 50;
}

// Defina o texto que você quer exibir
var texto = "Onda: " + string(waves + 1)

// Defina a cor do texto
draw_set_font(fnt_font1)
draw_set_color(c_white);

// Desenhe o texto na tela
draw_text(x_pos, y_pos, texto);


