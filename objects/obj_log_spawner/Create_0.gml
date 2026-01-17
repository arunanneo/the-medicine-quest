/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 022001B2
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_floating_block"
/// @DnDArgument : "layer" ""Entities""
/// @DnDSaveInfo : "objectid" "obj_floating_block"
instance_create_layer(x + 0, y + 0, "Entities", obj_floating_block);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0A379F8A
/// @DnDArgument : "steps" "900"
/// @DnDArgument : "alarm" "10"
alarm_set(10, 900);