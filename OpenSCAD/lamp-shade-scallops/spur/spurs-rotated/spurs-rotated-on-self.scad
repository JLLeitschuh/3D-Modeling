
difference()
{
	cylinder (h = 2, r=55, center = true, $fn=100);
    
//    translate([0, 30, -5])
    for(x = [0 : 30 : 360])
    {
        rotate(a=x, v=[0,0,1])
        {
            scale([0.1, 0.1, 13.9])
            import("../spurs-a.stl");
        }
    }
}