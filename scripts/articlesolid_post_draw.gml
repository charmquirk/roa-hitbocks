//articlesolid-post-draw

if state >= 1 {
    if !("hb_c0" in player_id) { exit; }
    var len = (lifetime - clamp(state_timer, 0, lifetime))/lifetime;
    var c_over = player_id.hb_c0;
    var player_color = player_id.hb_c;
    switch player_color {
        case 13: // Blacklight
            c_over = player_id.hb_c3;
            break;
    }
    // var parent_index = 0; // Based on main sprite
    // parent_index = ; // when sprite is 9, my sprite is 0
    switch state {
        case 1:
            draw_sprite_ext(sprite_get("mail_icon"), 0, x, y, 1, 1, 0, c_over, 1);
            break;
        case 2:
            draw_sprite_ext(sprite_get("mail_icon"), image_index-8, x, y, 1, 1, 0, c_over, 1);
            break;
    }
    
}