
//SET THE KEYS
key_right = keyboard_check(ord('D'));
key_left = -keyboard_check(ord('A'));
key_jump=keyboard_check_pressed(ord('W'));

//ASSIGN MOVEMENT TO KEYS
move = key_right + key_left;
hsp=move*movespeed;



if (place_meeting(x+hsp,y,obj_wall))
{
    while (!place_meeting(x+sign(hsp),y,obj_wall))
    { x+=sign(hsp); }
    hsp=0;
}

if (place_meeting(x,y+vsp,obj_wall))
{
    while (!place_meeting(x,y+sign(vsp),obj_wall))
    {
     y+=sign(vsp);
    }
    vsp=0;
    }
 
 //APPLY GRAVITY
 if (vsp < 10 ) vsp+=grav;
 
 
 if (place_meeting(x,y+1,obj_wall))
 {
 vsp= key_jump*-jumpspeed;
 }
 
 x+=hsp;
y+=vsp;

