//article1_init
sprite_index = sprite_get("jackbox");
mask_index = sprite_get("jackbox_mask");

can_be_grounded = false;
ignores_walls = false;
uses_shader = true;




bars = 0;
bars_max = 3;
frame_tick_default = 12;
frame_tick = frame_tick_default;
lifetime = 600;
revolutions = 4; // per bar
state = -1;
state_timer = 0;
tick1 = 2;
tick2 = 1.75;
tick3 = 1.5;
wind_f_num = 12;
wind_timer = 0;

wind_time = wind_f_num*(revolutions*(tick1+tick2+tick3));