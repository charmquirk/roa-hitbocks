//articlesolid_init
sprite_index = sprite_get("solid");
mask_index = sprite_get("box_mask");
image_index = 2;

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

state = 0;
state_timer = 0;
decay1 = 120;
lifetime1 = decay1*4;
decay2 = 2;
lifetime2 = decay2*5;