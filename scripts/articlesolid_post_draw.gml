//articlesolid-post-draw

if state > 0 {
    if !("hb_c0" in player_id) { exit; }
    var len = (lifetime - clamp(state_timer, 0, lifetime))/lifetime;
    var c_over = player_id.hb_c0;
    var player_color = player_id.hb_c;
    switch player_color {
        case 13: // Blacklight
            c_over = player_id.hb_c3;
            break;
    }
    var index_add = image_index; // Based on main sprite
    draw_sprite_ext(sprite_get("mail_icon"), index_add, x, y, 1, 1, 0, c_over, 1);
}