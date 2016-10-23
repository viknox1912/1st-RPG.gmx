/// scr_move_state
scr_get_input();
if (pots_key &&  obj_player_stats.pots > 0 && obj_player_stats.hp != obj_player_stats.maxhp){
    obj_player_stats.hp += 5;
    if (obj_player_stats.hp > obj_player_stats.maxhp) {
    obj_player_stats.hp = obj_player_stats.maxhp;
    }
    obj_player_stats.pots -= 1;
}
if (attack_key ) {
    image_index = 0;
    state = scr_attack_state;
   
}
if (dash_key && obj_player_stats.stamina >= 5) 
    {
    state = scr_dash_state;
    alarm[0] = room_speed /6;
    obj_player_stats.stamina -= 5;
    obj_player_stats.alarm[0] = room_speed/6;
    }
// get axis
var xaxis = (right - left);
var yaxis = (down - up);

//get direction
dir = point_direction (0, 0, xaxis, yaxis);
//get length
if (xaxis == 0 and yaxis == 0)
    {
        len = 0;
    } else 
        {
        
         len = spd;  
         scr_get_face();
        }


//get speed
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);
//move
phy_position_x += hspd;
phy_position_y += vspd;
//Animate the sprite 
image_speed = .2;
if (len == 0) image_index = 0;

switch (face) {
 case RIGHT:
 sprite_index = spr_player_right;
 break;
 case UP:
 sprite_index = spr_player_up;
 break;
 case LEFT:
 sprite_index = spr_player_left;
 break;
 case DOWN:
 sprite_index = spr_player_down;
 break;
}
