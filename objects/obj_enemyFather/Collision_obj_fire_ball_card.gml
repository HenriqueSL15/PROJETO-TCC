isColliding = true
if(!other.drag && other.sprite_index == spr_fire_ball_explosion){
	life-=other.dano
	vspd = 0
}

