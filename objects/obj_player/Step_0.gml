right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
down = keyboard_check(vk_down);
up = keyboard_check(vk_up);
clickAttack = keyboard_check_pressed(ord("C"))
holdAttack = keyboard_check(ord("C"))
letGoAttack = keyboard_check_released(ord("C"))
//Movimentação
var moveH = (right - left)
var moveV = (down - up)

hspd = moveH * spd
vspd = moveV * spd
layer_create(1,"Text")

if(movable){
if(place_meeting(x+hspd,y,walls)){
	while(!place_meeting(x+sign(hspd),y,walls)){
		x = x + sign(hspd)
	}
	hspd = 0
}

x = x + hspd

if(place_meeting(x,y+vspd,walls)){
	while(!place_meeting(x,y+sign(vspd),walls)){
		y = y + sign(vspd)
	}
	vspd = 0
}

y = y + vspd


if(vspd > 0){
	sprite_index = spr_playerDown
}else if(vspd < 0){
	sprite_index = spr_playerUp
}


if(hspd > 0){
	sprite_index = spr_playerRight
}else if(hspd < 0){
	sprite_index = spr_playerLeft
}
}
//Variáveis
var flipped = direction
var sword_x = (x + 4) * (flipped)
var _xx = x + lengthdir_x(0,image_angle)
var y_offset = lengthdir_y(-20,image_angle)

isReturning = false; // Adiciona uma variável para rastrear se a espada está voltando

script_execute(states);


holding = false

//Ataque
if (holdAttack && hasSword && !alreadyClicked) {
	holding = true
	letGo = false
}

if(holding){
	time++
	if(time > 0 && time < 75){
		show_debug_message("POWER 1")
		strength = 1
	}else if(time > 74 && time < 150){
		show_debug_message("POWER 2")
		strength = 2
	}else if(time > 149){
		show_debug_message("POWER 3")
		strength = 3
	}
}else if(!holding){
	if(letGoAttack && !alreadyClicked){
		letGo = true
		alreadyClicked = true
	}
}

if(letGo){
	var sword = instance_create_layer(_xx, y - 10, "Shoot", obj_swordSpinning);
    sword.speed = 3;

    if (obj_player.sprite_index == spr_playerLeft) {
        sword.direction = 180;
    } else if (obj_player.sprite_index == spr_playerRight) {
        sword.direction = 0;
    } else if (obj_player.sprite_index == spr_playerUp) {
        sword.direction = 90;
    } else {
        sword.direction = 270;
    }
	
	if(obj_player.strength == 1){
		sword.returnDistance = 50
	}else if(obj_player.strength == 2){
		sword.returnDistance = 150
	}else if(obj_player.strength == 3){
		sword.returnDistance = 250	
	}

    sword.target_player = obj_player; // Armazena uma referência ao objeto do jogador na espada
	sword.isReturning = false
	sword.hasSword = false
	sword.isGoing = true
	hasSword = false
	letGo = false
}