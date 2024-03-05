//article1_update

if type == "healing" {sprite_index = sprite_get("deliveryh");} // Add a cooldown for after you use it and before hte beginning of the match
// switch type {
//     case "healing":
//         sprite_index = sprite_get("deliveryh");
//         break;
//     default:
//         sprite_index = sprite_get("delivery");
//         break;
// }

var win_max = 1;
var win_min = 0;

state_timer++;

switch(state) {
    case -1: // Destroy
        win_max = 21;
        win_min = 21;
        break;
    case 0: // Set up
        switch type {
            case "damage":
                frame_tick = 6;
                break;
            case "healing":
                frame_tick = 20;
                break;
            default:
                frame_tick = frame_tick_default;
                break;
        }
        
        win_min = 0;
        win_max = 15;
        break;
    case 1: // Arm
        frame_tick = frame_tick_default;
        win_max = 20;
        win_min = 16;
        // with oPlayer {
        //     if get_player_team(player) == get_player_team(other.player) || player == other.player {
        //         if (box_healing_done < box_max_healing+1) {
        //             box_healing_done++;
        //             take_damage(player, other.player, box_healing_done);
        //         }
        //     }
        // }
        break;
    case 2: // Ready
        win_max = 21;
        win_min = 21;
        break;
}


image_index = win_min + floor(state_timer/frame_tick);
image_index = clamp(image_index, win_min, win_max);
var win_num = win_max-win_min+1;
if (state_timer >= win_num*frame_tick) {
    switch state {
        case -1:
            instance_destroy();
            exit; // End this script
            break;
        case 0:
            state = 1;
            break;
        case 1:
            state = 2;
            break;
        case 2:
            if state_timer >= lifetime {
                state = -1;
            }
            break;
    }
    state_timer = 0;
}
