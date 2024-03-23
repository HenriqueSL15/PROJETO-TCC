//Passa pelas colunas e linhas
for (var i = 0;i < linhas;i++){
	for (var j = 0;j < cols;j++){
		
		var _img = min(max(0, img - j), img_num)
		
		//Desenha o sprite
		draw_sprite_ext(spr_quad_strip,_img, j * tamanho, i * tamanho, 1 , 1 , 0 , c_black,1)
	}
}