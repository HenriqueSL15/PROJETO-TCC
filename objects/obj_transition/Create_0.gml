//Configuração da grid
tamanho = sprite_get_width(spr_quad_strip)
cols = view_get_wport(view_camera[0]) / tamanho
linhas = view_get_hport(view_camera[0]) / tamanho

//Sprite inicial da animação
img = 0

destino = Game

img_vel = sprite_get_speed(spr_quad_strip) / game_get_speed(gamespeed_fps)

img_num = sprite_get_number(spr_quad_strip) - 1

entrando = true