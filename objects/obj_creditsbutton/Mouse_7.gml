/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 7CAD0F26
event_inherited();

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 0A71319F
/// @DnDApplyTo : {obj_buttonparent}
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-1000"
/// @DnDArgument : "y_relative" "1"
with(obj_buttonparent) {
x += 0;y += -1000;
}

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 4732D07C
/// @DnDArgument : "var" "global.credits_popup"
/// @DnDArgument : "sequenceid" "seq_credits"
/// @DnDArgument : "layer" ""GUI""
/// @DnDSaveInfo : "sequenceid" "seq_credits"
global.credits_popup = layer_sequence_create("GUI", 0, 0, seq_credits);