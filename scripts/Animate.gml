///Animate(Animation Array)
animation=argument0;

//image_xscale=sign(hsp);
image_speed=0.5;

if place_meeting(x,y+1,obj_wall) // if not jumping
{
if (hsp!=0) //moving horizontally
{
        image_xscale=sign(hsp);
        sprite_index=animation[1];
}

if (hsp==0 && vsp==0) //not moving horizontally or vertically
{
sprite_index=animation[0];
}


}

if (vsp!=0)
{sprite_index=animation[2];}


