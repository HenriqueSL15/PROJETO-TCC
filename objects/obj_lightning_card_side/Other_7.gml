if (sprite_index == spr_lightning){
	if(instance_exists(obj_enemyFather)){
		obj_enemyFather.b = 0
	}
	instance_destroy()
}