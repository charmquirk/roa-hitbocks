set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
// set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 1);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 0);

set_num_hitboxes(AT_DAIR, 1);

// Down
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 36);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);