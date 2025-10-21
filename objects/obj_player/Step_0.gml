/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D143795
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "value" "keyboard_check(vk_right) - keyboard_check(vk_left)"
var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3CD4BBDA
/// @DnDArgument : "expr" "move_x*move_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x*move_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3B8B7DAE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_groundcollision"
/// @DnDSaveInfo : "object" "obj_groundcollision"
var l3B8B7DAE_0 = instance_place(x + 0, y + 2, [obj_groundcollision]);if ((l3B8B7DAE_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 571EE9A9
	/// @DnDParent : 3B8B7DAE
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 35D944FF
	/// @DnDParent : 3B8B7DAE
	/// @DnDArgument : "spriteind" "spr_johnnyidle"
	/// @DnDSaveInfo : "spriteind" "spr_johnnyidle"
	sprite_index = spr_johnnyidle;
	image_index = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 406B8034
	/// @DnDParent : 3B8B7DAE
	/// @DnDArgument : "x" "move_x"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_groundcollision"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_groundcollision"
	var l406B8034_0 = instance_place(x + move_x, y + 2, [obj_groundcollision]);if (!(l406B8034_0 > 0)){	/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 0BB5E220
		/// @DnDParent : 406B8034
		/// @DnDArgument : "x" "move_x"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "10"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_groundcollision"
		/// @DnDSaveInfo : "object" "obj_groundcollision"
		var l0BB5E220_0 = instance_place(x + move_x, y + 10, [obj_groundcollision]);if ((l0BB5E220_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 78199C95
			/// @DnDInput : 2
			/// @DnDParent : 0BB5E220
			/// @DnDArgument : "expr" "abs(move_x)"
			/// @DnDArgument : "var" "move_y"
			/// @DnDArgument : "var_1" "move_x"
			move_y = abs(move_x);
			move_x = 0;}}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5B96B0E8
	/// @DnDParent : 3B8B7DAE
	var l5B96B0E8_0;l5B96B0E8_0 = keyboard_check(vk_space);if (l5B96B0E8_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 178F94C2
		/// @DnDParent : 5B96B0E8
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 59348504
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01EE1841
	/// @DnDParent : 59348504
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A5BB04C
		/// @DnDParent : 01EE1841
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 389EFC1D
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "move_speed"
/// @DnDArgument : "object" "obj_groundcollision"
/// @DnDSaveInfo : "object" "obj_groundcollision"
move_and_collide(move_x, move_y, obj_groundcollision,4,0,0,move_speed,-1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BB9AB2E
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "not" "1"
if(!(move_x == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C07A23E
	/// @DnDParent : 0BB9AB2E
	/// @DnDArgument : "expr" "sign(move_x)"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = sign(move_x);}