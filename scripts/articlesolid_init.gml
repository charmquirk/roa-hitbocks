//articlesolid_init
sprite_index = asset_get("empty_sprite");
mask_index = asset_get("empty_sprite");
image_index = 0;

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

frame_tick_default = 2;
frame_tick = frame_tick_default;
lifetime = 400;
state = 0;
state_timer = 0;

