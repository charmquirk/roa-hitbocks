hurtbox_spr = sprite_get("mask");
crouchbox_spr = sprite_get("mask");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 32;
idle_anim_speed = .1;
crouch_anim_speed = 2;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 2;
dash_speed = 6;
dash_turn_time = 6;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = 0.6; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.4;

jump_start_time = 4;
jump_speed = 12;
short_hop_speed = 8.5;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 8; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .2; //multiplier of air_accel while in pratfall
air_friction = .2;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 8.5;
walljump_vsp = 8.5;
walljump_time = 12;
max_fall = 12; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 5;
dodge_recovery_frames = 1;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 1;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 1;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


// Solid Box / Mail Box
mailbox = noone;
mailbox_timer = 0; // Cooldown timer
mailbox_interval = 180; // Cooldown time
mailbox_lifetime = 400;
// Jack-in-the-box
jackbox = noone;
jackbox_lifetime = 600;
// Black box
blackbox = noone;
blackbox_interval = 240;
blackbox_lifetime = 600;
blackbox_timer = 0;
blackboxes = [];
max_blackboxes = 2;
blackbox_charges = max_blackboxes;

beg_x = 0;
beg_y = 0;

// Colors
hb_c = get_player_color(player);

hb_r0 = get_color_profile_slot_r(get_player_color(player),0);
hb_g0 = get_color_profile_slot_g(get_player_color(player),0);
hb_b0 = get_color_profile_slot_b(get_player_color(player),0);

hb_r1 = get_color_profile_slot_r(get_player_color(player),1);
hb_g1 = get_color_profile_slot_g(get_player_color(player),1);
hb_b1 = get_color_profile_slot_b(get_player_color(player),1);

hb_r2 = get_color_profile_slot_r(get_player_color(player),2);
hb_g2 = get_color_profile_slot_g(get_player_color(player),2);
hb_b2 = get_color_profile_slot_b(get_player_color(player),2);

hb_r3 = get_color_profile_slot_r(get_player_color(player),3);
hb_g3 = get_color_profile_slot_g(get_player_color(player),3);
hb_b3 = get_color_profile_slot_b(get_player_color(player),3);

// Custom Sounds
sfx_winding1 = sound_get("pop_goes_the_weasel_p1");