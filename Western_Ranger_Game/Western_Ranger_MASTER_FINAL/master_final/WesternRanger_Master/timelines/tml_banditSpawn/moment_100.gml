if (obj_boss.mode == 0) {
	instance_create_layer(obj_boss.x+irandom_range(10,50),obj_boss.y+irandom_range(10,50),"Instances_1",obj_banditLong);
}
else if (obj_boss.mode == 1) {
	instance_create_layer(obj_boss.x+irandom_range(10,50),obj_boss.y+irandom_range(10,50),"Instances_1",obj_banditMedium);
}
else if (obj_boss.mode == 2) {
	instance_create_layer(obj_boss.x+irandom_range(10,50),obj_boss.y+irandom_range(10,50),"Instances_1",obj_banditClose);
}