for (var i = 0;i < linhas;i++){
	for (var j = 0;j < cols;j++){
		//draw_sprite(spr_quad_strip10, 8,j*tamanho, i*tamanho)
		
		var _img = min(max(0, img - j), img_num)
		
		draw_sprite_ext(spr_quad_strip10,_img, j * tamanho, i * tamanho, 1 , 1 , 0 , c_black,1)
	}
}