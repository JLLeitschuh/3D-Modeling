
use <../rainmaker.scad>

/* [Shell] */

height = 380; // [140 : 380]

innerRadius = 20; // [30 : 40]

outerRadius = 24; // [34 : 46]

rungsPerLevel = 2; // [1 : 4]

stepRadius = 1; // [1 : 5]

zDistanceBetweenRungs = 5; // [1:15]

/* [Hidden] */

i = 3; // [1:100]

rainmaker(height = height,
          outerRadius = outerRadius,
          innerRadius = innerRadius,
		  rungsPerLevel = rungsPerLevel,
	  	  stepRadius = stepRadius,
	  	  zDistanceBetweenRungs = zDistanceBetweenRungs);
