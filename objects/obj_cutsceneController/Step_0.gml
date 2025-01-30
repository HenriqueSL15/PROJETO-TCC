// Evento Step
if (etapa == 0) {
    // Fase 1: Logo 1 fade in, depois fade out
    if (fade_in) {
        // Aumentar o alpha até 1
        alpha += 0.01;
        if (alpha >= 1) {
            alpha = 1;
            fade_in = false; // Começar o fade out
        }
    } else {
        // Reduzir o alpha até 0
        alpha -= 0.01;
        if (alpha <= 0) {
            alpha = 0;
            // Mudar para o próximo sprite
					//sprite_index = spr_names;
            fade_in = true; // Reiniciar o fade in
            etapa = 1;      // Mudar para a segunda etapa
        }
    }
} else if (etapa == 1) {
    // Fase 2: Logo 2 fade in, depois fade out
    if (fade_in) {
        // Aumentar o alpha até 1
        alpha += 0.01;
        if (alpha >= 1) {
            alpha = 1;
            fade_in = false; // Começar o fade out
        }
    } else {
        // Reduzir o alpha até 0
        alpha -= 0.01;
        if (alpha <= 0) {
            alpha = 0;
            // Aqui você pode adicionar o que deseja fazer depois de exibir o segundo sprite
            // Por exemplo, mudar para outra room ou repetir o processo
			instance_create_layer(x,y,"Instances",obj_initialMenu)
			instance_destroy()
		}
    }
}else if(etapa == 2){
	instance_create_layer(x,y,"Instances",obj_initialMenu)
			instance_destroy()
}
