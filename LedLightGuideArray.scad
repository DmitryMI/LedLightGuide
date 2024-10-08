$fn=100;

InnerDiameter = 3.0;
InnerDiameterExpansion = 1.0;
WallThickness = 1.5;
Height = 15;
LedSpacing = 6;
LedNum = 3;


difference()
{
    union()
    {
        cube([LedSpacing * (LedNum - 1), InnerDiameter+InnerDiameterExpansion+WallThickness*2, Height], center = true);
        
        translate([LedSpacing * (LedNum - 1)/2, 0, 0])
        {
            cylinder(Height, (InnerDiameter+InnerDiameterExpansion+WallThickness*2)/2, (InnerDiameter+InnerDiameterExpansion+WallThickness*2)/2, center = true);
        }
        
        translate([-LedSpacing * (LedNum - 1)/2, 0, 0])
        {
            cylinder(Height, (InnerDiameter+InnerDiameterExpansion+WallThickness*2)/2, (InnerDiameter+InnerDiameterExpansion+WallThickness*2)/2, center = true);
        }
    }
    
    for(i = [0 : LedNum])
    {
        translate([-LedSpacing * (LedNum - 1)/2 + LedSpacing * i, 0, 0])
        {
            cylinder(Height, (InnerDiameter+InnerDiameterExpansion)/2, (InnerDiameter+InnerDiameterExpansion)/2, center = true);
        }
    }
}