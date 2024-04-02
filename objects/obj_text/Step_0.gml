// Verifica se precionou o espaço
if(keyboard_check_pressed(vk_space)){
	
	//Verifica se a quantia de caracteres é menor que a max da página
	if(charCount < string_length(text[page])){
		charCount = string_length(text[page]);
	}
	
	// Verifica se a página + 1 é menor que o comprimento do texto
	if(page+1 < array_length(text)){
		
		// Avança a página e reseta os caracteres
		page+=1;
		charCount = 0;
	}else{
		//Caso contrário, destroi o texto
		instance_destroy();
		creator.alarm[1] = 1;
	}
}

