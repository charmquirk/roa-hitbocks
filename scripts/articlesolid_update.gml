//articlesolid_update
var win_max = 1;
var win_min = 0;



switch(state) {
    case -1: // Destroying state
        win_max = 21
        win_min = 17;
        mask_index = asset_get("empty_sprite");
        break;
    case 0: // Initializing state
        win_max = 7;
        win_min = 0;
        break;
    case 1: // Inactive state
        win_max = 8;
        win_min = 8;
        // frame_tick = 120; // Slower framerate
        mask_index = sprite_get("box_mask");
        break;
    case 2: // Active state
        // frame_tick = frame_tick_default; // Reset frame rate since it was changed in state 1
        win_max = 16;
        win_min = 9;
        break;
}

var win_num = win_max - win_min +1;
if win_num > 1 {image_index = win_min + floor(floor(state_timer/frame_tick) % win_num);}
else {image_index = win_min;}
if (state_timer >= win_num*frame_tick) && state != 1 { // If animation completed
    switch state {
        case -1:
            instance_destroy();
            exit; // End this script
            break;
        case 0:
            state = 1;
            break;
        case 2:
            state = -1;
            player_id.solid_timer = player_id.solid_interval;
            break;
    }
    state_timer = 0;
}
if state == 1 && state_timer >= lifetime {
    state = -1;
    state_timer = 0;
}
state_timer++;