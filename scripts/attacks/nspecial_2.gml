set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 1);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 0);

set_num_hitboxes(AT_NSPECIAL_2, 1);

// Box damage
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, box.x-32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, box.y-32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1);