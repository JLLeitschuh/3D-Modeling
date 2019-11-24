
use <../../../basics/rounded-edges/doughnuts/doughnuts.scad>;

use <../../../shapes/geometry/arc/extruded/extruded-arc.scad>;

module halfCirclePhoneStand(height = 19.125,
                            minkowskiSphereRadius = 0.5,
                            arcRadius = 36,
                            arcRadiusExtension = 1.5)
{
    halfCirclePhoneStand_cradle(height = height,
                                minkowskiSphereRadius = minkowskiSphereRadius,
                                radius = arcRadius,
                                radiusExtension = arcRadiusExtension);

    halfCirclePhoneStand_stand(height = height,
                               minkowskiSphereRadius = minkowskiSphereRadius);
}

// sub-modules and functions follow

module halfCirclePhoneStand_cradle(height,
                                   minkowskiSphereRadius,
                                   radius,
                                   radiusExtension)
{
    xTranslate = 30;
    yTranslate = 32.7;

    difference()
    {
        halfCirclePhoneStand_cradle_bed(height = height,
                                           minkowskiSphereRadius = minkowskiSphereRadius,
                                           radius = radius,
                                           radiusExtension = radiusExtension,
                                           xTranslate = xTranslate,
                                           yTranslate = yTranslate);

        halfCirclePhoneStand_cradle_cutout(bedHeight = height,
                                        minkowskiSphereRadius = minkowskiSphereRadius,
                                        radius = radius,
                                        radiusExtension = radiusExtension,
                                        bed_xTranslate = xTranslate,
                                        bed_yTranslate = yTranslate);
    }
}

module halfCirclePhoneStand_cradle_bed(height,
                                       minkowskiSphereRadius,
                                       radius,
                                       radiusExtension,
                                       xTranslate,
                                       yTranslate)
{
    zTranslate = minkowskiSphereRadius;
    color("magenta")
    translate([xTranslate, yTranslate, zTranslate])
    rotate([0, 0, 213])     
    roundedRectangularArc(angle = 150,
                          height = height,
                          minkowskiRadius = minkowskiSphereRadius,
                          radius = radius,
                          radiusExtension = radiusExtension);
}

module halfCirclePhoneStand_cradle_cutout(bedHeight,
                                          minkowskiSphereRadius,
                                          radius,
                                          radiusExtension,
                                          bed_xTranslate,
                                          bed_yTranslate)
{
    zLength = 4.2;    

    cutoutRadiusExtension = radiusExtension + 3;

    xTranslate = bed_xTranslate + 0.2;
    yTranslate = bed_yTranslate + 0.2;
    zTranslate = minkowskiSphereRadius + (bedHeight / 2.0) - (zLength / 2.0);

    color("magenta")
    translate([xTranslate, yTranslate, zTranslate])
    rotate([0, 0, 227])     
    roundedRectangularArc(angle = 37,
                          height = zLength,
                          minkowskiRadius = minkowskiSphereRadius,
                          radius = radius,
                          radiusExtension = cutoutRadiusExtension);
}

module halfCirclePhoneStand_stand(height,
                                  minkowskiSphereRadius)
{
    halfCirclePhoneStand_stand_top(height = height,
                                   minkowskiSphereRadius = minkowskiSphereRadius);

    halfCirclePhoneStand_stand_connectorBar();

    halfCirclePhoneStand_stand_base(height = height,
                                    minkowskiSphereRadius = minkowskiSphereRadius);
}

module halfCirclePhoneStand_stand_base(height,
                                       minkowskiSphereRadius)
{
    color("green")
    translate([0, 0, minkowskiSphereRadius])
    roundDoughnut(height = height,
                innerRadius = 4.9,      // 4.9
                outerRadius = 5.59,     // 5.59
                minkowskiSphereRadius = minkowskiSphereRadius);
}

module halfCirclePhoneStand_stand_connectorBar()
{
    
}

module halfCirclePhoneStand_stand_top(height,
                                      minkowskiSphereRadius)
{
    xTranslate = 8.105;  // 8.05     // 8.1
    yTranslate = 8.85;  // 8.85     // 8.9

    color("green")
    translate([xTranslate, yTranslate, minkowskiSphereRadius])
    roundDoughnut(height = height,
                innerRadius = 1.9,  // 2.0
                outerRadius = 2.6,  // 2.6
                minkowskiSphereRadius = minkowskiSphereRadius);
}



