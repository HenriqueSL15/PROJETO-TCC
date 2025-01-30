if (etapa == 0) {
    // Começar a transição de fade out da logo
	if(alpha){
		
	}
    alpha -= 0.05;
    if (alpha <= 0) {
        alpha = 0;
        etapa = 1; // Próxima etapa, exibir o nome
        alpha = 0; // Resetar alpha para fade in do nome
        alarm[0] = tempo_exibicao_nome; // Próximo alarme para nome
    } else {
        // Continuar a diminuir a transparência
        alarm[0] = tempo_fade_out / 6; // Atualiza mais rápido para fade suave
    }
} else if (etapa == 1) {
    // Aumenta a transparência do nome (fade in)
    alpha += 0.05;
    if (alpha >= 1) {
        alpha = 1; // Parar o fade in
    } else {
        alarm[0] = tempo_fade_out / 6; // Atualiza mais rápido para fade suave
    }
}
