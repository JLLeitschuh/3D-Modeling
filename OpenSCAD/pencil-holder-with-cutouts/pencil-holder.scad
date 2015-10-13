
// RENAME THIS FILE TO shapes/cup.scad

module cup()
{
	difference()
	{
		// outer vase
		translate([0,0,0])
		cylinder (h = 70, r=55, center = true, $fn=100);
		
		// remvoed inner vasecentered spur
		translate([0,0,5])
		cylinder (h = 70, r=50, center = true, $fn=100);
	}
}