//hitbox_update

switch attack {
    case AT_FSPECIAL: // Hide teammates
        with oPlayer {
            if (player == other.player || get_player_team(player) == get_player_team(other.player)) {
                if instance_place(x,y,other) {
                    draw_indicator = false;
                    sprite_index = asset_get("empty_sprite");
                    // sprite_index =
                    // image_alpha = 0;
                    with(asset_get("new_dust_fx_obj")) {x = -300; y = -300; dust_length=0;}
                }
            }
        }
        break;
    case AT_NSPECIAL:
        if temp_timer < temp_timer_margin*temp_mod {
            temp_timer++;
            var modded = temp_timer % temp_mod;
            if modded == 0 {
                temp_power++;
                clamp(temp_timer,0,temp_timer_margin);
                var new_hsp = power(default_hsp,temp_power) * sign(hsp);
                hsp = new_hsp/temp_mod;
                // print_debug("NEW HSP: "+ string(hsp)+" of "+string(temp_timer/temp_mod))
            }
        }
        break;
    case AT_USPECIAL:
        x = player.x;
        y = player.y;
        break;
}