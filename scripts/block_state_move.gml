///block_state_move()
/// Move block By Keyboard

get_the_input();

if (false == IsHolded)
{
    
    var new_x = x;
    var new_y = y;
    
    if (left_pressed)
    {
        new_x -= sprite_get_width(0);
    }
    if (up_pressed)
    {
        new_y -= sprite_get_height(0);
    }
    if (down_pressed)
    {
        new_y += sprite_get_height(0);
    }
    
    new_x = max(0, new_x);
    new_x = min(room_width - (room_width % sprite_get_width(0)), new_x);
    new_y = max(0, new_y);
    new_y = min(room_height - sprite_get_height(0), new_y);
    
    if (false == place_meeting(new_x, new_y, obj_block))
    {
        x = new_x;
        y = new_y;
    }
}
