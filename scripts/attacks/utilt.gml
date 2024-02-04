set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
//set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 1);

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 0);

set_num_hitboxes(AT_UTILT, 1);

// Up
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 36);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);