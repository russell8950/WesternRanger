
var _arr = argument0;
var _oldVal = argument1;
var _newVal = argument2;

var _indexToReplaceAt = array_find_index(_arr, _oldVal);

if(_indexToReplaceAt == -1 )
	return -1;
	
_arr[@ _indexToReplaceAt] = _newVal;

