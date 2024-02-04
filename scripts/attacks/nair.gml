set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 3);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 1);

set_attack_value(AT_NAIR, AG_OFF_LEDGE, 1);


set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
//set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
//set_window_value(AT_NAIR, 1, AG_USES_CUSTOM_GRAVITY, 1);
//set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, -.5);

set_num_hitboxes(AT_NAIR, 1);


set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 36);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.3);
//set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9);
