//update
if state == PS_CROUCH {
    draw_indicator = false;
    // sprite_index = asset_get("empty_sprite");
    image_alpha = 0;
    with(asset_get("new_dust_fx_obj")) {x = -300; y = -300; dust_length=0;}
}
if solid_timer > 0 {
    solid_timer--;
}
