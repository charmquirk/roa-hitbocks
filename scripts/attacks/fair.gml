set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 3);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);

// Startup
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 0);


// Active
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 4);
// set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, 0.6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 0);


// Endlag
set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 2);

// First hit
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 36);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 15);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);

// Second hit
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 36);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);


// set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
// set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
// set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 4);
// set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 0);
// set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -4);
// set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 36);
// set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 36);
// set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 1);
// set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 8);
// set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 30);
// set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 0.6);
// set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 3);
// set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
// set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 8);
// set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.3);
// set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 3);