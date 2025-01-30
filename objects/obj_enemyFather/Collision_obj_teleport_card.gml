isColliding = true
tele = 1460
if(other.x < pos[0]){
	x = other.x + 70
}else{
	x = pos[0]
	canCount = true
}
if(sprite_index == spr_enemy_archer_attacking || sprite_index == spr_enemy_archer_attacking_loop){
	sprite_index = spr_enemy_archer
	e = 0
}

if(sprite_index == spr_enemy_7_attacking || sprite_index == spr_enemy_7_sleeping){
	sprite_index = spr_enemy_7
	image_speed = 0
}