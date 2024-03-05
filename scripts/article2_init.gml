//article1_init
sprite_index = sprite_get("box");
mask_index = sprite_get("box_mask");

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

state = -1;
state_timer = 0;
anim_speed = 0.2;