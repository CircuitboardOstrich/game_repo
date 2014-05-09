myheight = display_get_height(); 
mywidth = display_get_width(); 
room_set_width(rLevel, mywidth);
room_set_height(rLevel, myheight);
/*else if display_get_width > 1440
{
        room_set_width(rLevel, 1440);
        room_set_height(rLevel, display_get_height());
}
else if 1024 < display_get_width < 1440
{
        room_set_width(rLevel, 1024);
        room_set_height(rLevel, display_get_height());

}
else
{
room_set_width(rLevel, 600);
room_set_height(rLevel, display_get_height());
}
