set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 0);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 0);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 0);

set_num_hitboxes(AT_BAIR, 4);

// Sweet-ish spot
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -16);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -6);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 36);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 180);
set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);

// Sweetspot
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -34);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -6);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 36);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 150);
set_hitbox_value(AT_BAIR, 2, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);

// Second sour spot
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -34);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -6);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 36);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_BAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -16);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -6);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 36);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 36);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 1);