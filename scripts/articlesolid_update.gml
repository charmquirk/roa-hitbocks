//articlesolid_update
var win_max = 1;
var win_min = 0;

state_timer++;

switch(state) {
    case -1: // Destroying state
        frame_tick = frame_tick_default; // Reset frame rate since it was changed in state 1
        win_max = 31;
        win_min = 28;
        mask_index = asset_get("empty_sprite");
        break;
    case 0: // Initializing state
        frame_tick = frame_tick_default; // Reset frame rate since it was changed in state 1
        win_max = 7;
        win_min = 0;
        mask_index = asset_get("empty_sprite");
        break;
    case 1: // Inactive state
        win_max = 24;
        win_min = 8;
        frame_tick = 24; // Slower framerate
        mask_index = sprite_get("box_mask");
        break;
    case 2: // Active state
        frame_tick = frame_tick_default; // Reset frame rate since it was changed in state 1
        win_max = 27;
        win_min = 25;
        break;
}

image_index = win_min+floor(state_timer/frame_tick);
image_index = clamp(image_index, win_min, win_max);
var win_num = win_max-win_min+1;
if (state_timer >= win_num*frame_tick) { // If animation completed
    switch state {
        case -1:
            instance_destroy();
            exit; // End this script
            break;
        case 0:
            state = 1;
            break;
        case 1:
            state = -1;
            
            break;
        case 2:
            state = -1;
            break;
    }
    state_timer = 0;
}