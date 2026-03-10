/// @description Add an item to the player's inventory.
/// @param {String} _name - Item display name (must match for stacking)
/// @param {Real} _quantity - Amount to add
/// @param {Asset.GMSprite} _sprite - Sprite to show in inventory grid
function scr_inventory_add(_name, _quantity, _sprite) {
	if (variable_global_exists("player_inventory")) {
		global.player_inventory.item_add(_name, _quantity, _sprite);
	}
}
