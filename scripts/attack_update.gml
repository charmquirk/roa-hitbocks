// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack) {
    case AT_NSPECIAL :
        if (window_timer == 4) {
            if(!instance_exists(box)) {
                box = instance_create(x,y,"obj_article1");
                box.state = 0;
                move_cooldown[AT_NSPECIAL] = 30;
            }
            else {
                with oPlayer {
                    if (get_player_team(player) != get_player_team(other.player)) {
                        if (instance_place(x,y,other.box) && other.box.state = 0) {
                            other.box.state = 1;
                            box.image_index = 0;
                            other.player.move_cooldown[AT_NSPECIAL] = 120;
                        }
                    }
                }
                if box.state != 1 {
                    box.state = 2;
                    move_cooldown[AT_NSPECIAL] = 30;
                }
                
                
                //attack = AT_NSPECIAL_2;
                
            }
        }
        break;
    case AT_NSPECIAL_2 :
        
        break;
    case AT_USPECIAL:
        switch(window) {
            case 1:
                move_cooldown[AT_USPECIAL] = 6;
                move_cooldown[AT_NSPECIAL] = 6;
                
                if instance_exists(solid_box) && solid_box.state == 0 {
                    x = solid_box.x;
                    y = solid_box.y-32;
                    solid_box.state_timer = 0;
                    solid_box.state = 1;
                }
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
                    vsp = -12;
                }
                break;
            case 3:
                if (window_timer == 1 && solid_timer <= 0) {
                    solid_box = instance_create(x,y+32,"obj_article_solid");
                    solid_timer = solid_interval;
                }
                break;
        }
        break;
}