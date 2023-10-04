/// @description Insert description here
// You can write your code in this editor
vsp = vsp + grv;

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

if (place_meeting(x,y,oWall)) {
	x = x - sign(hsp);
}



//Enemy Flashing When attacked
if (place_meeting(x + hsp,y,oPlayer)) and (oPlayer.sprite_index = sPlayerAttackRun) {
	t = 30;
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
	
	image_alpha = 1;
	image_blend = c_white;
}

//Boundary Collision
if (place_meeting(x+hsp,y,oBoundary))
{
while (!place_meeting(x+sign(hsp),y,oBoundary))
	{
		x = x + sign(hsp);
	}
	hsp =  - hsp;
}
else {
	move_towards_point(oPlayer.x,y+1,2);
}
//x = x + hsp;

if (!hsp = 0) {
	sprite_index = sBoss1Run;
}

if (place_meeting(x+hsp,y,oPlayer)) {
	sprite_index = sBoss1Attack;
	mask_index = sBoss1Attack;
	//image_xscale = -4;
}
else {
	mask_index = sBoss1;
}

if (oPlayer.x < x ) {
	image_xscale = -4;
}
else {
	image_xscale = 4;
}



