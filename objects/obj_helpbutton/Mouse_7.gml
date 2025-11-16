/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 4FB7F1B3
event_inherited();

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 5BC19AF5
/// @DnDArgument : "xpos" "683"
/// @DnDArgument : "ypos" "384"
/// @DnDArgument : "var" "global.help_popup"
/// @DnDArgument : "sequenceid" "seq_helpmenu"
/// @DnDArgument : "layer" ""GUI""
/// @DnDSaveInfo : "sequenceid" "seq_helpmenu"
global.help_popup = layer_sequence_create("GUI", 683, 384, seq_helpmenu);

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 586C88CD
/// @DnDApplyTo : {obj_buttonparent}
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-1000"
/// @DnDArgument : "y_relative" "1"
with(obj_buttonparent) {
x += 0;y += -1000;
}