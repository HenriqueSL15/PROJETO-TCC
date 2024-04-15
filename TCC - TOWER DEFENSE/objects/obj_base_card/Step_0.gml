if (!drag) {
	// Reseta a posição da carta caso seja um local inválido
	if (x + (sprite_width / 2) >= 1344 || y >= 672) {
		x = x_padrao
		y = y_padrao
	}else{
	// Deleta a carta(por enquanto) caso seja uma posição válida
	instance_destroy()
	}
}else{
	// Arrasta a carta
	x = mouse_x + xx;
	y = mouse_y + yy;
}