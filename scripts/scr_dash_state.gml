//set lenght
if (len == 0) { 
    dir = face*90;
    }
len = spd*6;
//get speed
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);
//move
phy_position_x += hspd;
phy_position_y += vspd;
//Dash anim
var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;

