//variables
var ah; 
var xx;
var dirtlevel;
var diram;
var botdiry;
var col;
globalvar bw;
globalvar hbw;
globalvar twobw;
globalvar thrbw;
globalvar foubw;
globalvar fivbw;





ah = (room_height / 2) - floor(random(room_height / 3));
ah = floor((ah / bw)) * bw;     //ah is a random number - if it isn't divisible by 32 to an integer, make it
for(xx = foubw; xx < room_width; xx += bw)    
{
      //grass
      instance_create(xx, ah, oGrass);
      //dirt
      dirtlevel = ah + bw;
      instance_create(xx, dirtlevel, oDirt);
      diram = floor(random_range(3, 7));
      
      repeat (diram)
      {
            instance_create(xx, dirtlevel + bw, oDirt); // however many times you choose, make a dirt at an everincreasing number
            dirtlevel += bw;
      }
      
      botdiry = dirtlevel
      
      //stone
      while botdiry < room_height
            {
                    instance_create(xx, botdiry + bw, oStone);          //if there's space, plug it with grey rocks
                    botdiry += bw;
            }
      if (xx = foubw) || (xx = fivbw) || (xx = room_width - bw) || (xx = room_width - twobw)
      {
            ah += 0;                           // if xx is the first, penultimate or final block, don't move
      }
      else
      {
            ah += choose(bw, -bw, 0);   //otherwise, do whatever
      }
      
      if ah < twobw
      {
            ah = twobw; // if we're too high, take an adrenaline shot
      }
}
