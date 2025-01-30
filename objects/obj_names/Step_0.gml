// Evento Step de obj_names
if (fade_in) {
    image_alpha  += 0.01;
    if (image_alpha  >= 1) {
        image_alpha  = 1;
        fade_in = false;  // Começa o fade-out
    }
} else {
    image_alpha  -= 0.01;
    if (image_alpha  <= 0) {
        image_alpha  = 0;
        // Aqui você pode adicionar a lógica para o que acontece quando o fade-out termina
		instance_destroy()
    }
}
