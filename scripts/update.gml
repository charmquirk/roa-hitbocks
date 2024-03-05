//update
if state == PS_CROUCH && state_timer > 4 {
    draw_indicator = false;
    image_alpha = 0;
    with(asset_get("new_dust_fx_obj")) {x = -300; y = -300; dust_length=0;}
}
if solid_timer > 0 && !instance_exists(solid_box) {
    solid_timer--;
}

