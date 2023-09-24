
// Declare a matriz e inicialize-a com a sprite de corrida
var sprites = array_create(1); // Você tem apenas uma sprite
sprites[0] = spr_player_correndo; // Sprite do jogador correndo

var _dir = keyboard_check(ord("D"));
var _esq = keyboard_check(ord("A"));
var _cima = keyboard_check(ord("W"));
var _baixo = keyboard_check(ord("S"));

velh = (_dir - _esq) * vel;
velv = (_baixo - _cima) * vel;

x += velh;
y += velv;



if (velh != 0 || velv != 0) {
    movendo = 1;	
} else {
    movendo = 0;
}

//pulando
	
// Configura a sprite somente se o jogador estiver se movendo
if (movendo == 1) {
    sprite_index = sprites[0]; // Use a única sprite de corrida para o jogador
} else {
    sprite_index = src_player; // Use a sprite parada quando o jogador não estiver se movendo
}
