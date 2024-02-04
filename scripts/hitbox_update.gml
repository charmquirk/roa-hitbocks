//hitbox_update

if attack == AT_FSPECIAL {
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
}
if attack == AT_USPECIAL {
    x = player.x;
    y = player.y;
}