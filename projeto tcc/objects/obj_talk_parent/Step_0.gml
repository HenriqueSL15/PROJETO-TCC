/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (place_meeting(x,y, obj_player)){
	if(keyboard_check_pressed(vk_space)){
		if (mytext == noone){
		mytext = instance_create_layer(obj_player.x - 200,obj_player.y + 120,"Text",obj_text);
		mytext.text = texting;
		mytext.creator = self;
		mytext.name = myName;
		}
	}
} else {
	if(mytext != noone){
	instance_destroy(mytext);
	mytext = noone;;
	}
}
