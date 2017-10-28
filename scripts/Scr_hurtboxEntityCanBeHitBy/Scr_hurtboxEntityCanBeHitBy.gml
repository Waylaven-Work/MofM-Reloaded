///@arg hitbox
var _hitbox = argument0;
var _is_target = Scr_isTarget(object_index, _hitbox.targets);

return !invincible and _is_target;