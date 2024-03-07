//draw hud
// Jack in the Box
if !("hb_r0" in self) { exit; }
hb_c0 = make_color_rgb(hb_r0,hb_g0,hb_b0);  //get_color_profile_slot_r(player, 0);
hb_c1 = make_color_rgb(hb_r1,hb_g1,hb_b1);
hb_c2 = make_color_rgb(hb_r2,hb_g2,hb_b2);
hb_c3 = make_color_rgb(hb_r3,hb_g3,hb_b3);
hb_c = get_player_color(player);

var style = 0;

switch hb_c {
    case 9: // CYM Light
        style = 2;
        break;
    case 11: // RGB Dark
        style = 1;
        break;
    case 12: // CYM Dark
        style = 1;
        break;
}



// Black box colors
var c_jo1 = c_white;
var c_jo2 = c_white;
var c_ju1 = c_white;
var c_ju2 = c_white;
var c_jc = hb_c2;;

// Jack-in-the-Box colors
var c_mo1 = c_white;
var c_mo2 = c_white;
var c_mu1 = c_white;
var c_mu2 = c_white;
var c_mc = hb_c2;


switch style {
    case 2: // c3 lightest color
        // Black box colors
        c_jo1 = hb_c3;
        c_jo2 = hb_c2;
        c_ju1 = hb_c2;
        c_ju2 = hb_c3;
        
        // Jack-in-the-Box colors
        c_mo1 = hb_c3; // same as 1
        c_mo2 = hb_c2; // same as 1
        c_mu1 = hb_c2; // same as 1
        c_mu2 = hb_c3; // same as 1
        break;
    case 1: // Matching elements
        // Black box colors
        c_jo1 = hb_c0;
        c_jo2 = hb_c2;
        c_ju1 = hb_c3;
        c_ju2 = hb_c1;
        
        // Jack-in-the-Box colors
        c_mo1 = hb_c3;
        c_mo2 = hb_c2;
        c_mu1 = hb_c2;
        c_mu2 = hb_c1;
        c_mc = hb_c3;
        break;
    default: // High contrast
        // Black box colors
        c_jo1 = hb_c0;
        c_jo2 = hb_c3;
        c_ju1 = hb_c3;
        c_ju2 = hb_c0;
        
        // Jack-in-the-Box colors
        c_mo1 = hb_c0;
        c_mo2 = hb_c3;
        c_mu1 = hb_c3;
        c_mu2 = hb_c0;
        break;
}

var c_co = c_white;
var c_cu = c_white;

if instance_exists(solid_box) && solid_box.state > 0 { // Active
    if solid_box.state == 2 {
        c_mo2 = c_mo1;
        c_mu2 = c_mu1;
    }
    draw_sprite_ext(sprite_get("ability_mailbox"), 1, temp_x, temp_y-40, 1, 1, 0, c_mu2, 1);
    draw_sprite_ext(sprite_get("ability_mailbox"), 0, temp_x, temp_y-40, 1, 1, 0, c_mo2, 1);
    if solid_box.state == 1 {
        var time_left = (solid_box.lifetime-solid_box.state_timer)/60;
        draw_debug_text(temp_x + 13, temp_y - 28, string(round(time_left)));
    }
}
else {
    if (solid_timer > 0) { // Cooldown
        draw_sprite_ext(sprite_get("ability_mailbox"), 0, temp_x, temp_y-40, 1, 1, 0, c_mc, 1);
        draw_debug_text(temp_x + 13, temp_y - 28, string(round(solid_timer/60)));
    }
    else { // Inactive
        draw_sprite_ext(sprite_get("ability_mailbox"), 1, temp_x, temp_y-40, 1, 1, 0, c_mu1, 1);
        draw_sprite_ext(sprite_get("ability_mailbox"), 0, temp_x, temp_y-40, 1, 1, 0, c_mo1, 1);
    }
}

if (blackbox_charges <= 0) { //Cooldown
    draw_sprite_ext(sprite_get("ability_blackbox"), 0, temp_x+40, temp_y-40, 1, 1, 0, c_jc, 1);
    c_co = c_jc;
}
else { // Active
    if (special_down && attack == AT_FSPECIAL && window == 2) || (max_blackboxes == 1 && instance_exists(blackbox)) { //active
        draw_sprite_ext(sprite_get("ability_blackbox"), 1, temp_x+40, temp_y-40, 1, 1, 0, c_ju2, 1);
        draw_sprite_ext(sprite_get("ability_blackbox"), 0, temp_x+40, temp_y-40, 1, 1, 0, c_jo2, 1);
        c_co = c_jo2;
        c_cu = c_ju2;
    }
    else { // Inactive
        draw_sprite_ext(sprite_get("ability_blackbox"), 1, temp_x+40, temp_y-40, 1, 1, 0, c_ju1, 1);
        draw_sprite_ext(sprite_get("ability_blackbox"), 0, temp_x+40, temp_y-40, 1, 1, 0, c_jo1, 1);
        c_co = c_jo1;
        c_cu = c_ju1;
    }
}
if blackbox_timer > 0 {
    draw_debug_text(temp_x + 53, temp_y - 28, string(round((blackbox_timer+ ((blackbox_charges - max_blackboxes + 1)*blackbox_interval))/60)));
}
if max_blackboxes > 1 {
    
    if blackbox_charges > 0 {
        draw_sprite_ext(sprite_get("charges"), 1, temp_x+57, temp_y-58, 1, 1, 0, c_cu, 1);
    }
    draw_sprite_ext(sprite_get("charges"), 0, temp_x+57, temp_y-58, 1, 1, 0, c_co, 1);
    draw_debug_text(temp_x + 53, temp_y - 62, string(blackbox_charges));
}