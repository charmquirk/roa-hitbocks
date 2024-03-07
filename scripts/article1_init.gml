//article1_init
sprite_index = sprite_get("jackbox");
mask_index = sprite_get("box_mask");

can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

frame_tick_default = 12;
frame_tick = frame_tick_default;
lifetime = 600;
state = -1;
state_timer = 0;
bars = 0;
revolutions = 4; // per bar
bars_max = 3;