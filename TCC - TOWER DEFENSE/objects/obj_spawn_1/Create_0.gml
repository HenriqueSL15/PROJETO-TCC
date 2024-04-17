randomize()
vspd = 0;
timer = 0;
valorEnemy = irandom(2);

if(valorEnemy == 0){
		sprite_index = spr_enemy;
		vspd = 1
	}
	else
	if(valorEnemy == 1){
		sprite_index = spr_enemy2;
		vspd = 3
	}
	else
	if(valorEnemy == 2){
		sprite_index = spr_enemy3;
		vspd = 2
	}