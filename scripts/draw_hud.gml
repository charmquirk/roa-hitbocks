//draw hud
// Jack in the Box
if !("hb_r0" in self) { exit; }
var hb_c0 = make_color_rgb(hb_r0,hb_g0,hb_b0);  //get_color_profile_slot_r(player, 0);
var hb_c1 = make_color_rgb(hb_r1,hb_g1,hb_b1);
var hb_c2 = make_color_rgb(hb_r2,hb_g2,hb_b2);
var hb_c3 = make_color_rgb(hb_r3,hb_g3,hb_b3);
var c_under1 = hb_c2;
var c_over1 = hb_c3;
var c_under2 = hb_c3;
var c_over2 = hb_c0;
var c_cool = hb_c2;
switch hb_c {
    case 11:
        c_over2 = hb_c1; // Lime green. Otherwise, black and dark blue.
        break;
}

if instance_exists(solid_box) {
        draw_sprite_ext(sprite_get("ability_jackbox_underlay"), 0, temp_x, temp_y-40, 1, 1, 0, c_under2, 1);
        draw_sprite_ext(sprite_get("ability_jackbox_overlay"), 0, temp_x, temp_y-40, 1, 1, 0, c_over2, 1);
}
else {
    if (solid_timer > 0) {
        draw_sprite_ext(sprite_get("ability_jackbox_overlay"), 0, temp_x, temp_y-40, 1, 1, 0, c_cool, 1);
        draw_debug_text(temp_x + 13, temp_y - 28, string(round(solid_timer/60)));
    }
    else {
        draw_sprite_ext(sprite_get("ability_jackbox_underlay"), 0, temp_x, temp_y-40, 1, 1, 0, c_under1, 1);
        draw_sprite_ext(sprite_get("ability_jackbox_overlay"), 0, temp_x, temp_y-40, 1, 1, 0, c_over1, 1);
    }
}