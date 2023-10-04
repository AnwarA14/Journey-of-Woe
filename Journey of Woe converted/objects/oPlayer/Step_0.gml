/// @description Insert description here
// You can write your code in this editor

//Get Player Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);

dashing = false;

//Player Falling
if (oPlayer.y >= 768)
    {
      global.hp = 0;
    }

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7;
}

//Horizontal Collision with oEnemy1
if (place_meeting(x+hsp,y,oEnemy1)) and (place_meeting(x+hsp,y,oBoss1)) and (dashing = false) 
{
    while (!place_meeting(x+sign(hsp),y,oEnemy1)) 
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}



//Horizontal Collision
if (place_meeting(x+hsp,y,oWall)) 
{
    while (!place_meeting(x+sign(hsp),y,oWall)) 
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oWall)) 
{
    while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;


//Animation

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerJ;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else 
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else 
	{
		sprite_index = sPlayerR;
	}
}

//Dash
if (keyboard_check(ord("E"))) and (!place_meeting(x+hsp+2*image_xscale,y,oWall))  {
	oPlayer.x = oPlayer.x + hsp + 2*image_xscale;
	dashing = true;
	sprite_index = sPlayerDash;
} 
else {
	dashing = false;
	

}

//Block

if (mouse_check_button(mb_right)) {
	block = true;
	if (hsp = 0) {
	sprite_index = sPlayerBlock;
	}
	else {
	sprite_index = sPlayerBlockRun;
	}
}
else {
	block = false;
}


//Block Attack

if (block = true) and (mouse_check_button(mb_left) = true) {
	sprite_index = sPlayerBlockRunAttack;
}


if (!sprite_index = sPlayerBlock) and(!sprite_index = sPlayerBlockRun) {
block = false;
}

//Turn direction

if (key_left > key_right) {
	image_xscale = - 1;
}
if (key_left < key_right) {
	image_xscale = 1;
}
	
//Attack

if (mouse_check_button(mb_left)) {
if dashing = false {
sprite_index = sPlayerAttackRun2;//Changed from sPlayerAttackRun
}
else {
sprite_index = sPlayerDashAttack;
}
attacking = true;
}
else {
	attacking = false;
}

if t > 0 {
	image_blend = c_red;
	
	if t % 2 == 0 {
	if image_alpha = .4{
			image_alpha = 1;
	}else{
			image_alpha =.4;
		}
	}
	
	t = t - 1
	
}else{
	image_alpha = 1;
	image_blend = c_white;
}

