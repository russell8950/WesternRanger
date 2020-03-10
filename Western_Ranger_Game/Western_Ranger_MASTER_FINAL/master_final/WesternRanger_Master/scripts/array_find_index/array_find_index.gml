
var _arr = argument0;
var _val = argument1;

for(var _g = 0; _g < array_length_1d(_arr); _g++){
	if(_arr[_g] == _val)
		return _g;
}

return -1;
