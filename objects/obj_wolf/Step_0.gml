/// @DnDAction : YoYo Games.Paths.Path_Speed
/// @DnDVersion : 1
/// @DnDHash : 020C5CAF
/// @DnDArgument : "speed" "2"
path_speed = 2;

/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 5DE644DA
/// @DnDArgument : "x1" "-100"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-100"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "100"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "100"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "shape" "2"
/// @DnDSaveInfo : "obj" "obj_player"
var l5DE644DA_0 = collision_ellipse(x + -100, y + -100, x + 100, y + 100, [obj_player], true, 1);if((l5DE644DA_0)){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 389E3BA9
	/// @DnDParent : 5DE644DA
	/// @DnDArgument : "spriteind" "spr_madwolfwalking"
	/// @DnDSaveInfo : "spriteind" "spr_madwolfwalking"
	sprite_index = spr_madwolfwalking;
	image_index = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 38EE10A6
	/// @DnDParent : 5DE644DA
	/// @DnDArgument : "speed" "2"
	/// @DnDArgument : "speed_relative" "1"
	speed += 2;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F3CCD68
	/// @DnDParent : 5DE644DA
	/// @DnDArgument : "var" "attacking"
	/// @DnDArgument : "value" "false"
	if(attacking == false){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 09C7B492
		/// @DnDParent : 3F3CCD68
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "attacking"
		attacking = true;
	
		/// @DnDAction : YoYo Games.Paths.Path_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 118D6868
		/// @DnDParent : 3F3CCD68
		/// @DnDArgument : "speed" "0"
		path_speed = 0;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B23FF46
		/// @DnDParent : 3F3CCD68
		/// @DnDArgument : "var" "dist_x"
		/// @DnDArgument : "value" "obj_player.x - x"
		var dist_x = obj_player.x - x;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A0416FB
		/// @DnDParent : 3F3CCD68
		/// @DnDArgument : "var" "dist_y"
		/// @DnDArgument : "value" "obj_player.y - y"
		var dist_y = obj_player.y - y;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2632DB93
		/// @DnDParent : 3F3CCD68
		/// @DnDArgument : "var" "dist_x"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "-50"
		if(dist_x < -50){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 3A554D26
			/// @DnDParent : 2632DB93
			/// @DnDArgument : "spriteind" "spr_madwolfidle"
			/// @DnDSaveInfo : "spriteind" "spr_madwolfidle"
			sprite_index = spr_madwolfidle;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 6E00B6D5
			/// @DnDParent : 2632DB93
			/// @DnDArgument : "xscale" "-3"
			/// @DnDArgument : "yscale" "3"
			image_xscale = -3;image_yscale = 3;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 61E3D878
		/// @DnDParent : 3F3CCD68
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 55CFA822
			/// @DnDParent : 61E3D878
			/// @DnDArgument : "var" "dist_x"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "50"
			if(dist_x > 50){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 6DC2D005
				/// @DnDParent : 55CFA822
				/// @DnDArgument : "spriteind" "spr_madwolfidle"
				/// @DnDSaveInfo : "spriteind" "spr_madwolfidle"
				sprite_index = spr_madwolfidle;
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Instances.Sprite_Scale
				/// @DnDVersion : 1
				/// @DnDHash : 2C8B86D2
				/// @DnDParent : 55CFA822
				/// @DnDArgument : "xscale" "3"
				/// @DnDArgument : "yscale" "3"
				image_xscale = 3;image_yscale = 3;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 4BBB04AD
			/// @DnDParent : 61E3D878
			else{	/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 34B6B548
				/// @DnDParent : 4BBB04AD
				/// @DnDArgument : "spriteind" "spr_madwolfidle"
				/// @DnDSaveInfo : "spriteind" "spr_madwolfidle"
				sprite_index = spr_madwolfidle;
				image_index = 0;}}}}