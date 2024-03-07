set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_spew_smoke"));

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, blackbox_lifetime);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 96);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 1);
// set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
// set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
// set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
// set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 2);
// set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 2);
// set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 2);
// set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 2);
// set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 2);
// set_hitbox_value(AT_FSPECIAL, 1, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("blackbox"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 2);
// set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);