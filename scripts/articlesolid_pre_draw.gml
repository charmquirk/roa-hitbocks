// articlesolid-pre-draw

if state == 1 {
    if !("hb_c0" in player_id) { exit; }
    var len = (lifetime - clamp(state_timer, 0, lifetime))/lifetime;
    var c_under = player_id.hb_c1;
    var c_over = player_id.hb_c3;
    var player_color = player_id.hb_c;
    switch player_color {
        case 13: // Blacklight
            c_under = c_white;
            break;
        case 14:
        case 15:
            c_under = player_id.hb_c0;
            break;
    }
    draw_sprite_ext(sprite_get("mailflag"), 1, x+32, y-16, 1, len, 0, c_under, 1);
    draw_sprite_ext(sprite_get("mailflag"), 0, x+32, y-16, 1, 1, 0, c_over, 1);
}
