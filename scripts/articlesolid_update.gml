//articlesolid_update

state_timer++;

switch(state) {
    case 0:
        image_index = 1 + floor(state_timer/decay1);
        if (state_timer >= lifetime1 -1) {
            state = 1;
            state_timer = 0;
            // image_index = 0;
        }
       
        break;
    case 1:
        image_index = 4+floor(state_timer/decay2)
        image_index = clamp(image_index, 4, 9);
        if (state_timer >= lifetime2 -1) {
            instance_destroy();
        }
        break;
}