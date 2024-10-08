$fn=1000;

InnerDiameter = 3.0;
InnerDiameterExpansion = 0.1;
WallDiameter = 1;
Height = 20;

difference()
{
    cylinder(Height, InnerDiameter+WallDiameter, InnerDiameter+WallDiameter);
    cylinder(Height, InnerDiameter+InnerDiameterExpansion, InnerDiameter+InnerDiameterExpansion);
}