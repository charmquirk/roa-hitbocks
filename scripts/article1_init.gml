//article1_init
sprite_index = sprite_get("delivery");
mask_index = sprite_get("box_mask");

can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

frame_tick_default = 2;
frame_tick = frame_tick_default;
lifetime = 600;
state = -1;
state_timer = 0;
