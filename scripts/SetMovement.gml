
//SET THE KEYS
key_right = keyboard_check(ord('D'));
key_left = -keyboard_check(ord('A'));
key_jump  =keyboard_check_pressed(ord('W'));

//ASSIGN MOVEMENT TO KEYS
move = key_right + key_left;
hsp=move*movespeed;

if (place_meeting(x+hsp,y,obj_wall))
{
    while (!place_meeting(x+sign(hsp),y,obj_wall))
    { x+=sign(hsp); }
    hsp=0;
}
 x+=hsp;
 
 
 //APPLY GRAVITY
 
 y+=grav;
