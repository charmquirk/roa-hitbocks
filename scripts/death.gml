// called when the character gets KO'd

if instance_exists(solid_box) {
    solid_box.state = -1;
    solid_box.state_timer = 0;
}
solid_timer = 0;