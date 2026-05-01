/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30856B99
/// @DnDArgument : "var" "alarm[0]"
/// @DnDArgument : "op" "1"
if(alarm[0] < 0)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1ACC99B1
	/// @DnDParent : 30856B99
	/// @DnDArgument : "colour" "$FF0000E5"
	image_blend = $FF0000E5 & $ffffff;
	image_alpha = ($FF0000E5 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 292E7AA0
	/// @DnDParent : 30856B99
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hearts"
	hearts += -1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 148D542F
	/// @DnDParent : 30856B99
	/// @DnDArgument : "steps" "20"
	alarm_set(0, 20);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30AEC930
	/// @DnDParent : 30856B99
	/// @DnDArgument : "var" "hearts"
	/// @DnDArgument : "op" "3"
	if(hearts <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 70A99321
		/// @DnDParent : 30AEC930
		/// @DnDArgument : "spriteind" "spr_johnnykirkded"
		/// @DnDSaveInfo : "spriteind" "spr_johnnykirkded"
		sprite_index = spr_johnnykirkded;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 6F61A17B
		/// @DnDParent : 30AEC930
		/// @DnDArgument : "steps" "60"
		/// @DnDArgument : "alarm" "11"
		alarm_set(11, 60);
	
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0CA4454F
		/// @DnDParent : 30AEC930
		room_restart();
}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4D730BA5
	/// @DnDParent : 30856B99
	else
{

}
}