/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 224CD610
/// @DnDArgument : "output" "livid"
/// @DnDArgument : "var" "global.level"
livid = global.level;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 575C8BB0
/// @DnDArgument : "var" "livid"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "3"
if(!(livid == 3)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A5ABFB5
	/// @DnDParent : 575C8BB0
	/// @DnDArgument : "var" "double_jump"
	double_jump = 0;}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D143795
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "value" "(keyboard_check(vk_right) - keyboard_check(vk_left)) "
var move_x = (keyboard_check(vk_right) - keyboard_check(vk_left)) ;

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
/// @DnDArgument : "object" "obj_collision_parent"
/// @DnDSaveInfo : "object" "obj_collision_parent"
var l3B8B7DAE_0 = instance_place(x + 0, y + 2, [obj_collision_parent]);if ((l3B8B7DAE_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
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
	/// @DnDArgument : "object" "obj_collision_parent"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_collision_parent"
	var l406B8034_0 = instance_place(x + move_x, y + 2, [obj_collision_parent]);if (!(l406B8034_0 > 0)){	/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 0BB5E220
		/// @DnDParent : 406B8034
		/// @DnDArgument : "x" "move_x"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "10"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_collision_parent"
		/// @DnDSaveInfo : "object" "obj_collision_parent"
		var l0BB5E220_0 = instance_place(x + move_x, y + 10, [obj_collision_parent]);if ((l0BB5E220_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
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
		move_y += 1;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0E1F4C68
	/// @DnDParent : 59348504
	var l0E1F4C68_0;l0E1F4C68_0 = keyboard_check_pressed(vk_space);if (l0E1F4C68_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4239173C
		/// @DnDParent : 0E1F4C68
		/// @DnDArgument : "var" "double_jump"
		/// @DnDArgument : "value" "1"
		if(double_jump == 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 544E9B3A
			/// @DnDParent : 4239173C
			/// @DnDArgument : "expr" "-jump_speed  + 2"
			/// @DnDArgument : "var" "move_y"
			move_y = -jump_speed  + 2;
		
			/// @DnDAction : YoYo Games.Particles.Effect
			/// @DnDVersion : 1
			/// @DnDHash : 591A84F1
			/// @DnDParent : 4239173C
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "type" "4"
			/// @DnDArgument : "where" "1"
			/// @DnDArgument : "size" "2"
			/// @DnDArgument : "color" "$FFFFFFFF"
			effect_create_above(4, x + 0, y + 0, 2, $FFFFFFFF & $ffffff);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2C2CE4F4
			/// @DnDParent : 4239173C
			/// @DnDArgument : "var" "double_jump"
			double_jump = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 0E63DB94
			/// @DnDParent : 4239173C
			/// @DnDArgument : "steps" "540"
			/// @DnDArgument : "alarm" "3"
			alarm_set(3, 540);}}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 389EFC1D
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "move_speed"
/// @DnDArgument : "object" "obj_collision_parent"
/// @DnDSaveInfo : "object" "obj_collision_parent"
move_and_collide(move_x, move_y, [obj_collision_parent],4,0,0,move_speed,-1);

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
	image_xscale = sign(move_x);

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 4AE367C5
	/// @DnDParent : 0BB9AB2E
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_collision_parent"
	/// @DnDSaveInfo : "object" "obj_collision_parent"
	var l4AE367C5_0 = instance_place(x + 0, y + 0, [obj_collision_parent]);if ((l4AE367C5_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 750E4FD5
		/// @DnDParent : 4AE367C5
		/// @DnDArgument : "x" "+0"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-100"
		/// @DnDArgument : "y_relative" "1"
		x += +0;y += -100;}}