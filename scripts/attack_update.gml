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
                                sound_stop(sfx_winding1);
                            }
                            break;
                        case false:
                            var margin_y = 24;
                            if free { 
                                jackbox = instance_create(x,y,"obj_article1");
                            }
                            else {
                                jackbox = instance_create(x,y+margin_y,"obj_article1");
                            }
                            
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
                        if !attack_down {set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, walk_speed);}
                        if attack_down {set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, dash_speed);}
                        
                        
                    }
                }
                move_cooldown[AT_FSPECIAL] = 6;
                move_cooldown[AT_USPECIAL] = 6;
                break;
        }
        break;
    case AT_USPECIAL:
        switch(window) {
            case 1:
                move_cooldown[AT_USPECIAL] = 6;
                move_cooldown[AT_NSPECIAL] = 6;
                
                
                if mailbox_timer > 0 { set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 99);}
                else {reset_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME);}
                break;
            case 2:
                if (window_timer == 1) {
                    switch instance_exists(mailbox) {
                        case true:
                            if mailbox.state == 1 { 
                                x = mailbox.x;
                                y = mailbox.y-32; // Teleport there
                                mailbox.state_timer = 0;
                                mailbox.state = 2; // Set to active
                            }
                            break;
                        case false:
                            if mailbox_timer <= 0 {
                                if free {mailbox = instance_create(x, y + 32,"obj_article_solid");}
                                else {mailbox = instance_create(x, y + 32,"obj_article_solid");}
                                mailbox.state_timer = 0;
                                mailbox.state = 0; // Set to initialize
                            }
                            break;
                    }
                    if instance_exists(mailbox) && (mailbox.state == 0 || mailbox.state == 2) {
                        if !right_down && !left_down { vsp = -12; }
                        // Triangle = 8.5^2 + 8.5^2 = 12^2
                        if right_down && !left_down { hsp = +8.5; vsp = -8.5;}
                        if !right_down && left_down { hsp = -8.5; vsp = -8.5;}
                    }
                }
                break;
        }
        break;
}