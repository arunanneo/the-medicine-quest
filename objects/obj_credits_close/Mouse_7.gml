/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 538E6F8F
event_inherited();

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 14B2813E
/// @DnDApplyTo : {obj_buttonparent}
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1000"
/// @DnDArgument : "y_relative" "1"
with(obj_buttonparent) {
x += 0;y += 1000;
}

/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
/// @DnDVersion : 1
/// @DnDHash : 1BCEFE8A
/// @DnDArgument : "var" "global.credits_popup"
layer_sequence_destroy(global.credits_popup);