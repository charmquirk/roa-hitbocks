//articlesolid_init
sprite_index = sprite_get("solid");
mask_index = sprite_get("box_mask");
image_index = 0;

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

frame_tick_default = 2;
frame_tick = frame_tick_default;
lifetime = 400;
state = 0;
state_timer = 0;

