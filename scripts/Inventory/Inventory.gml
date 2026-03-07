function Inventory() constructor {
	// internal storage for all inventory items
	_inventory_items = [];

	// create or overwrite an item entry
	item_set = function (_name, _quantity, _sprite) {
		array_push(_inventory_items, {
			name: _name,
			quantity: _quantity,
			sprite: _sprite
		});
	};

	// find the index of an item by name, or -1 if not found
	item_find = function (_name) {
		for (var i = 0; i < array_length(_inventory_items); ++i) {
			if (_name == _inventory_items[i].name) {
				return i;
			}
		}
		return -1;
	};

	// add a quantity of an item, creating it if it doesn't exist
	item_add = function (_name, _quantity, _sprite) {
		var index = item_find(_name);

		if (index >= 0) {
			_inventory_items[index].quantity += _quantity;
		} else {
			item_set(_name, _quantity, _sprite);
		}
	};

	// check if we have at least _quantity of an item
	item_has = function (_name, _quantity) {
		var index = item_find(_name);

		if (index >= 0) {
			return _inventory_items[index].quantity >= _quantity;
		}

		return false;
	};

	// subtract a quantity of an item and remove it if it reaches zero
	item_subtract = function (_name, _quantity) {
		var index = item_find(_name);

		if (index >= 0) {
			if (item_has(_name, _quantity)) {
				_inventory_items[index].quantity -= _quantity;

				if (_inventory_items[index].quantity <= 0) {
					item_remove(index);
				}
			}
		}
	};

	// remove an item at a given index
	item_remove = function (_index) {
		array_delete(_inventory_items, _index, 1);
	};

	// return the underlying array of items (used by UI)
	item_get = function () {
		return _inventory_items;
	};

	// optional alias matching tutorial naming
	item_get_all = function () {
		return _inventory_items;
	};

	// helpful string representation for debugging
	toString = function () {
		return json_stringify(_inventory_items);
	};
}