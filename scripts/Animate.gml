///Animate(Animation Array)
image_speed=0.5;
animation=argument0;
if hsp!=0
{
image_xscale=sign(hsp);
}
//image_xscale=sign(hsp);

if place_meeting(x,y+1,obj_wall) // if on the ground
{
    if (hsp!=0) //moving horizontally
    {
        image_xscale=sign(hsp);
        sprite_index=animation[1];
    }

    if (hsp==0 && vsp==0) //not moving horizontally or vertically
    {   sprite_index=animation[0];  }
}
    
    if (vsp!=0) // jumping 
    {
        sprite_index=animation[2];
        
        if (image_index>11)
        {
            image_speed=0;
            image_index=11;
        }
    }

