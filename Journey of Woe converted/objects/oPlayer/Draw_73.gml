/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,oTextBoundary1) {
var xx = oTextBoundary1.x + 200;
var yy = 100;
var col = $0505b3;

draw_set_font(fAnnouncement);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
 
draw_sprite(sBackdrop, 0, xx - 350, yy - 60);
draw_set_color(col);
draw_text(xx,yy,"Argus, The Gatekeeper");
}

