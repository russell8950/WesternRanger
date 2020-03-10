/// @description Insert description here
// You can write your code in this editor

theirHealth = 3;

canShoot = true;

sighted = false;

startX = self.x;
startY = self.y;
previous = [noone,noone];

path_start(pth_theBandit,4,path_action_restart,false);

// for the boss only:
mode = 0;
alarm_set(1,1);
alarm_set(2,1);