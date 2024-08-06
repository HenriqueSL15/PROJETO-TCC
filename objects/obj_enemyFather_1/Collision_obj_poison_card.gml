isColliding = true
if(!other.drag && other.sprite_index == spr_damage_poison){
	show_debug_message(image_index)
	if(image_index > 0.58){
		life-=0.05
		vspd = 0
	}
}