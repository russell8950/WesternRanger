/// @desc Add item defination to itemDefinations array
/// @param type Type Of Item Enum
/// @param spriteIndex Index of Sprite To Show In GUI  
/// @param name Name Of This Item  
/// @param amount Amount Of This Item 
/// @param script Script to Execute On Use

var _typeOfItem = argument0;
var _sprite = argument1;
var _name = argument2;
var _amount = argument3;
var _useScript = argument4;



global.itemDefinitions[_typeOfItem, ItemProperties.sprite] = _sprite;
global.itemDefinitions[_typeOfItem, ItemProperties.name] = _name;
global.itemDefinitions[_typeOfItem, ItemProperties.amount] = _amount;
global.itemDefinitions[_typeOfItem, ItemProperties.userScript] = _useScript;
