estado = noone;
tempo_estado = room_speed * 5;
timer_estado = 0;

destino_x = x;
destino_y = y;
velh = 0;
velv = 0;
vel = 1;

sat = 0;

alvo = noone;
alvo_dir = 0;
duracao_ataque = 0.5
tempo_ataque = duracao_ataque;

sprite = sprite_index;
xscale = 1;
yscale = 1;

//metodo de mudanca de estado
muda_estado = function(_estado){
	tempo_estado--;
	timer_estado = irandom(tempo_estado)
	
	if(timer_estado == tempo_estado or tempo_estado <= 0){
		//mudar estado
		estado = _estado[irandom(array_length(_estado)-1)];
		
		tempo_estado = room_speed * 5;
	}
}

//metodo dele parado
estado_parado = function(){
	sprite = spr_boss_inicial;
	image_blend = c_white;
	velh = 0;
	velv = 0;

	muda_estado([estado_prepara_ataque, estado_parado]);
}
//sprite
desenha_sprite = function(){
	draw_sprite_ext(sprite, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
}	
	estado_prepara_ataque = function(){	
		
		//variavel para controlar a minha cor
		static _sat = 0;
		
		//sat nunca passa de 1
		if(sat < 1){
			sat +=(delta_time/ 2000000);
		}
		
		//animacao use a sat
		image_speed = sat;
		velv = 0;	
		velh = 0;
		image_blend = make_color_hsv(255,sat * 255, 255);
		
		//se eu esperei 2s eu ataco
		if(sat > 1 ){
			estado = estado_ataque;
			alvo_dir = point_direction(x, y, obj_player.x, obj_player.y)
			sat = 0;
			image_speed = 1;
		}
	}
	estado_ataque = function(){
		
		//diminuindo o tempo de ataque
		tempo_ataque -= delta_time/1500000;
		image_blend = c_aqua
		//avance na posicao do jogador na ultima posicao
		velh = lengthdir_x(vel * 4, alvo_dir);
		velv = lengthdir_y(vel * 4, alvo_dir);
		
		//fazendo ele sair do ataque
		if(tempo_ataque <= 0){
			//mudando estado
			estado = estado_parado
			
			//resetando o tempo do ataque
			tempo_ataque = duracao_ataque;
		}
	}

//estado inicial:
estado = estado_parado

