/// @description 

randomize();

inventory = new Inventory();

// sample items for testing the inventory system in rm_inventory
inventory.item_add("Blue Herb", 3, spr_herb1);
inventory.item_add("Green Herb", 2, spr_herb2);
inventory.item_add("Stone", 5, spr_Item_Stone);
inventory.item_add("Fish", 4, spr_Item_Fish);

show_debug_message(inventory);

// UI INFORMATION //

display_set_gui_size(1280, 720);

inventory_columns = 9;
inventory_rows = 5;

ui_padding_x = 64;
ui_padding_y = 64;
ui_panel_left = 320;
ui_border_size = 8;
ui_inventory_padding = 48;
ui_inventory_box = 64;
ui_inventory_margin = 16;

color_background = #55507a;
color_border = #36234a;
color_inventory_text = c_white;
color_inventory_highlight = c_white;