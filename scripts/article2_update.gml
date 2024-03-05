//article1_update

image_index += anim_speed;

switch(state) {
    case -1:
        
        break;
    // Normal
    case 0:
        image_index = clamp(image_index, 0, 2);
        break;
    // Healing
    case 1:
        sprite_index = sprite_get("healbox");
        if image_index > 2 {
            image_index = clamp(image_index, 2, 10);
            if image_index = 10 { image_index = 2; }
        }
        if state_timer > 120 {
            state = 2;
            state_timer = 0;
            image_index = 0;
        }
        with oPlayer {
            if get_player_team(player) == get_player_team(other.player) || player == other.player {
                if (box_healing_done < box_max_healing+1) {
                    box_healing_done++;
                    take_damage(player, other.player, box_healing_done);
                }
            }
            
        }
        break;
    case 2:
        sprite_index = sprite_get("box");
        image_index = clamp(image_index, 3, 8);
        if (image_index >= 9 or state_timer > image_number*anim_speed ){ instance_destroy(); }
        break;
}
state_timer++;


//image_index += anim_speed - (floor(image_index) == 2)*(anim_speed*0.9)

// image_index += anim_speed;
// image_index = clamp(image_index, 0, image_number);



// If animation ends, go to the fram after initiaion
//if image_index >= image_number { image_index = 1; }

