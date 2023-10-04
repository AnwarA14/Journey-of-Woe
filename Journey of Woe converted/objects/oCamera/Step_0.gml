/// @description Insert description here
// You can write your code in this editor

//Update destination
if (instance_exists(follow))
{
   xTo = follow.x - 100;
}

//Update object position
x += (xTo - x) / 25;

y = 0;

//Update camera view
camera_set_view_pos(cam,x,y);