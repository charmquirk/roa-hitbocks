// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack) {
    case AT_DSPECIAL:
        move_cooldown[AT_DSPECIAL] = 6;
        move_cooldown[AT_NSPECIAL] = 6;
        switch(window) {
            case 2:
                if (window_timer == 1) {
                    switch instance_exists(jackbox) {
                        case true:
                            if !(jackbox.type != "healing" && window < 1) { // Cannot delete healing boxes
                                jackbox.state = -1;
                                jackbox.state_timer = 0;
                            }
                            break;
                        case false:
                            jackbox = instance_create(x,y+10,"obj_article1");
                            if shield_down {
                                jackbox.type = "healing";
                            }
                            else {
                                jackbox.type = "damage";  
                            }
                            jackbox.lifetime = jackbox_lifetime;
                            jackbox.state = 0;
                            jackbox.state_timer = 0;
                            sound_play(sfx_winding1);
                            break;
                    }
                }
                break;
        }
        break;
    case AT_FSPECIAL:
        switch(window){
            case 1:
                if blackbox_charges > 0 && blackbox_timer <= blackbox_interval*(max_blackboxes-blackbox_charges) {
                    set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
                }
                else {
                    set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 99);
                }
                break;
            case 2:
                if window_timer == 1 {
                    if blackbox_charges > 0 && blackbox_timer <= blackbox_interval*(max_blackboxes-blackbox_charges) {
                        // array_push(blackboxes, blackbox)
                        blackbox_timer += blackbox_interval;
                        blackbox_charges--;
                    }
                }
                move_cooldown[AT_FSPECIAL] = 6;
                break;
        }
        break;
    case AT_USPECIAL:
        switch(window) {
            case 1:
                move_cooldown[AT_USPECIAL] = 6;
                move_cooldown[AT_NSPECIAL] = 6;
                
                
                if solid_timer > 0 {
                    set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 99);
                    if !instance_exists(solid_box) {
                        move_cooldown[AT_USPECIAL] = 90;
                    }
                }
                else {
                    reset_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME);
                }
                break;
            case 2:
                if (window_timer == 1) {
                    if (!instance_exists(solid_box) && solid_timer <= 0) || (instance_exists(solid_box)) {
                        if !right_down && !left_down { vsp = -12; hsp = 0;}
                        if right_down && !left_down { hsp = +6; vsp = -6;}
                        if !right_down && left_down { hsp = -6; vsp = -6;}
                    }
                    switch instance_exists(solid_box) {
                        case true:
                            if solid_box.state == 1 { 
                                x = solid_box.x;
                                y = solid_box.y-32; // Teleport there
                                solid_box.state_timer = 0;
                                solid_box.state = 2; // Set to active
                            }
                            break;
                        case false:
                            if solid_timer <= 0 {
                                solid_box = instance_create(x, y+16,"obj_article_solid");
                                solid_box.state_timer = 0;
                                solid_box.state = 0; // Set to initialize
                            }
                            break;
                    }
                }
                break;
        }
        break;
}