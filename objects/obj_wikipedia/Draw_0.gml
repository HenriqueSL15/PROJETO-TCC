draw_set_font(fnt_font1)
var wantSize = 64
var currSize = 100
var scale = 0.2
var sep = 150
var length = 3000
draw_set_color(c_red)
draw_rectangle(308,30,1404,690,0)

draw_set_color(c_white)
draw_rectangle(308,30,1404,690,10)
if (page == 0){
for(var i = 0;i < 3;i++){
	draw_set_color(c_black)
	if(i == 0){
		draw_sprite(spr_items,i,350,60)
		draw_text_ext_transformed(550,100,descricoes[i],sep,length,scale,scale,image_angle)
	}else if(i == 1){
		draw_sprite(spr_items,i,350,260)	
		draw_text_ext_transformed(550,300,descricoes[i],sep,length,scale,scale,image_alpha)
	}else if(i == 2){
		draw_sprite(spr_items,i,350,460)	
		draw_text_ext_transformed(550,500,descricoes[i],sep,length,scale,scale,image_alpha)
	}
}
}else if(page == 1){
	for(var i = 3;i < 6;i++){
	draw_set_color(c_black)
	if(i == 3){
		draw_sprite(spr_items,i,350,60)
		draw_text_ext_transformed(550,100,descricoes[i],sep,length,scale,scale,image_angle)
	}else if(i == 4){
		draw_sprite(spr_items,i,350,260)	
		draw_text_ext_transformed(550,300,descricoes[i],sep,length,scale,scale,image_alpha)
	}
}
}