set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 4);


set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_DTILT, 3);

// Down
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 36);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);

// // Down
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 1);
// set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 6);
// set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
// set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 3);
// set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
// set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 1);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 0);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -4);
// set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 36);
// set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 36);
// set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 270);
// set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
// set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 2);
// set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.05);
// set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 3);
// set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 1);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2);