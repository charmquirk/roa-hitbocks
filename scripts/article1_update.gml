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
        win_max = 0;
        win_min = 0;
        break;
    case 0: // Set up
        // switch type {
        //     case "damage":
        //         frame_tick = 6;
        //         break;
        //     case "healing":
        //         frame_tick = 20;
        //         break;
        //     default:
        //         frame_tick = frame_tick_default;
        //         break;
        // }
        win_min = 0;
        win_max = 11;
        break;
    case 1: // Arm
        frame_tick = frame_tick_default;
        win_max = 0;
        win_min = 0;
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
        win_max = 0;
        win_min = 0;
        break;
}



var win_num = win_max - win_min +1;
if win_num > 1 {image_index = win_min + floor(floor(state_timer/frame_tick) % win_num);}
else {image_index = win_min;}
if (state_timer >= win_num*frame_tick) && state != 1 && state != 0 {
    switch state {
        case -1:
            instance_destroy();
            exit; // End this script
            break;
        case 2:
            if state_timer >= lifetime {
                state = -1;
            }
            break;
    }
    state_timer = 0;
}
if state == 1 && state_timer >= lifetime {
    state = -1;
    state_timer = 0;
}
if state == 0 {
    var tick1 = 2;
    var tick2 = 1.75;
    var tick3 = 1.5;
    var ticks = tick1+tick2+tick3;
    var tracker = floor(floor(state_timer/frame_tick)/win_num);
    switch bars {
        case 0:
            frame_tick = tick1;
            break;
        case 1:
            frame_tick = tick2;
            break;
        case 2:
            frame_tick = tick3;
            break;
    }
    if state_timer >= win_num*frame_tick*revolutions {
        bars++;
        state_timer = 0;
        if bars >= bars_max {
            state = 1;
        }
        // print_debug("BAR"+string(bars))
    }
}