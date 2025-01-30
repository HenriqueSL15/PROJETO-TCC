var dist = 150;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura / 3;

if (etapa == 0) {
    // Desenhar o sprite com fade-in/fade-out
    draw_sprite_ext(sprite_index, 0, display_get_gui_width() / 2, display_get_gui_height() / 2, 1, 1, 0, c_white, alpha);
} else if (etapa == 1) {
	if (instance_exists(obj_names) == false) {
        instance_create_layer(display_get_width() / 2, display_get_height() / 2, "TEXTOS", obj_names);
    }
}
