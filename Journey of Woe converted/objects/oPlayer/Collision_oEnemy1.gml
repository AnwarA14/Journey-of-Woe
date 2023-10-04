/// @description Insert description here
// You can write your code in this editor


if (mouse_check_button(mb_left)) {//and (block = false)  {
    other.Enemyhp = other.Enemyhp - oPlayer.damage;
	if !(place_meeting(other.x+other.hsp+20,other.y -10,oBoundary)) {
	other.x = other.x + 20*sign(other.image_xscale);
	other.y = other.y - 10;
	}
	other.attacked = true;
	other.attacked = true;
	if (other.Enemyhp = 0) {
		instance_destroy(other);
	}
}

if !(mouse_check_button(mb_left)) and !(mouse_check_button(mb_right)) {//(attacking = true) or block = false{
global.hp = global.hp - 1;
t =30;
oPlayer.x = oPlayer.x - 40;
oPlayer.y = oPlayer.y - 40;
}
