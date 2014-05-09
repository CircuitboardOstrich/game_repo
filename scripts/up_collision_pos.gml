var numch;

for(numch = 0; numch < 33; numch += 1)
{
        if collision_point(x + numch, sprite_height, oBlock, false, true)
        {
                object_index.y -= object_index.yVel;
        }
}
