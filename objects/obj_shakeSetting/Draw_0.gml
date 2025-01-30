/// @description Inserir descrição aqui
// Você pode escrever seu código neste 
draw_self()
if(instance_exists(obj_background) && !instance_exists(obj_settings)){
	if(!obj_allRooms.skiped){
		draw_text(obj_background.x - obj_background.sprite_width / 2 + 30, y - sprite_height / 2, "Efeito de Agitação");	
	}else{
		draw_text(obj_background.x - obj_background.sprite_width / 2 + 30, y - sprite_height / 2, "Efeito de Agitação");
	}
}else if(!instance_exists(obj_background)){
	instance_destroy()
}