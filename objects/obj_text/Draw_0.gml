//Da uma fonte ao texto
draw_set_font(ft_textBox)

//Desenhando caixa de texto
draw_sprite(spr_text,0,x,y);

//Desenhando text

//Velocidade do texto
if(charCount < string_length(text[page])){
		charCount +=0.5;
}
textPart = string_copy (text[page], 1, charCount);

//Desenhando o nome
draw_set_halign(fa_center);
draw_text(x+ (boxWidth/2),y+yBuffer,name);
draw_set_halign(fa_left);

//Desenhando parte text
draw_text_ext(x+xBuffer, y+stringHeight+yBuffer, textPart, stringHeight ,boxWidth);
