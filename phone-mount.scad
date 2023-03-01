phoneLength=155; // 155
phoneWidth=75; // 75
phoneThickness=12; // 12
laptopThickness=5; // 5
clipWidth=70; // 70

/* [Hidden] */
materialThickness=3; // 3
clipHeight=9; // 9


difference() {
        translate([+77-clipWidth,0,0])
    cube([clipWidth,6+laptopThickness,clipHeight]);
    translate([-391,+3,-1])
        cube([1000,+laptopThickness,-3+clipHeight]);
    translate([0,-1,-7])
        cube([0,24+laptopThickness,28]);
  }
//bottom retaining clip
        translate([-8+76,+1,-3+clipHeight-phoneLength])
    cube([6.5,-1+materialThickness,9+materialThickness]);

//Laptop cross-bar
rotate([90,0,0])
translate([0,0,-6-laptopThickness])
linear_extrude(height=materialThickness, center=false, convexity=1, scale=[0], $fn=1)
polygon( points=[
            [77-clipWidth,0],
            [90-clipWidth,0],
            [76,5-phoneLength+13],
            [76,clipHeight-materialThickness-phoneLength],
            [-9+76,clipHeight-materialThickness-phoneLength]] );

//Phone cross-bar
rotate([90,0,0])
rotate([0,-20,0])
translate([-9.3,0,-30-phoneThickness])
linear_extrude(height=materialThickness, center=true, convexity=1, scale=[0], $fn=1)
polygon( points=[
            [82,-15],
            [81,0+clipHeight],
            [9.3+76+phoneWidth,14-phoneLength+13],
            [9.3+76+phoneWidth,9-phoneLength-materialThickness],
            [+9+76+phoneWidth,+9-phoneLength-materialThickness]] );

//Down-bar
rotate([90,0,0])
rotate([0,-20,0])
translate([-9.3,+0.0,-30-phoneThickness])
linear_extrude(height=materialThickness, center=true, convexity=0, scale=[0], $fn=1)
polygon( points=[   [89,-13],
                    [+0+76,clipHeight],
                    [0+76,19-phoneLength],
                    [3+76+10,19-phoneLength]] );
                    
//Phone bottom-bar
rotate([0,0,-20])
translate([-9+76,+28.5+phoneThickness,3-phoneLength+materialThickness])
cube([9+phoneWidth,3,14]);

//Clipbox
difference() {
    rotate([90,0,0])
    rotate([0,-20,0])
    translate([-13,+0,-31.5-phoneThickness])
    linear_extrude(height=+7+phoneThickness, center=false, convexity=0, scale=[0], $fn=1)
    polygon( points=[   [13+phoneWidth+76,0+clipHeight-materialThickness-phoneLength],
                        [13+76+phoneWidth,27-phoneLength],
                [+11+76+phoneWidth,27-phoneLength],
                [-11+76+phoneWidth,+2+clipHeight-materialThickness-phoneLength],
                    [-11+76+phoneWidth,+0+clipHeight-materialThickness-phoneLength]

    ] );
                
    rotate([0,0,-20])
    translate([62.0,+27,3+clipHeight-phoneLength-materialThickness])
    cube([+11+phoneWidth,+2+phoneThickness,+27]);
    rotate([0,0,-20])
        translate([26,8,26-phoneLength])
    cube([-3+phoneWidth,6+phoneThickness,11]);
    // visible cutout
            rotate([0,0,-20])
        translate([-4+76,+24,+12-phoneLength])
    cube([-2+phoneWidth,+5,25]);
}

//bottom left phone rest
rotate([0,0,-17])
        translate([-2,+10.1,10.5-phoneLength-materialThickness])
    linear_extrude(height=3, center=true, convexity=0, scale=[0], $fn=1)
    polygon( points=[   [-2+76,13.1],
                        [13.0+76,12.3],
                [26+76,15+phoneThickness],
                [-4+76,17+phoneThickness],]);
                
//left phone face/chamfer
//top phoneThickness bracket
rotate([0,0,-20])
    linear_extrude(height=9.0, convexity=0, scale=[0], $fn=1)
    polygon( points=[   [-9.3+76,31.5+phoneThickness],
                        [-4.1+76,31.5+phoneThickness],
                [-4.1+76,+26.0],
                [-10.1+76,+36],
                ] );
//top laptopThickness bracket
    linear_extrude(height=9.0, convexity=0, scale=[0], $fn=1)

    polygon( points=[   [+0+76,6+laptopThickness],
                        [2+76,4.3+laptopThickness],
                [+0+76,+1],
//                [-3+76,+8],
                ] );
//bottom phoneThickness bracket
translate([0,0,6-phoneLength])
rotate([0,0,-20])
    linear_extrude(height=12.0, convexity=0, scale=[0], $fn=1)

    polygon( points=[   [-9.3+76,31.5+phoneThickness],
                        [-5+76,31.5+phoneThickness],
                [-4.9+76,+27.0],
                [-10.1+76,+36],
                ] );

//bottom laptopThickness bracket
translate([0,0,+6-phoneLength])
    linear_extrude(height=12.0, convexity=0, scale=[0], $fn=1)
    polygon( points=[   [-2+76,6+laptopThickness],
                        [0.1+76,+6.0+laptopThickness],
                [+0+76,+1],
                [-2+76,+1],
                ] );

//top phone retainer
rotate([90,0,0])
rotate([0,-20,0])
        translate([+2.2,-6,-27])
    linear_extrude(height=2, center=true, convexity=0, scale=[0], $fn=1)
    polygon( points=[   [-10+76,-3+clipHeight],
                        [-4+76,-3+clipHeight],
                        [+4+76,6+clipHeight],
                [-10+76,6+clipHeight],] );
                
                
////pixel6a
//color([0.3,0.3,0.3])
//rotate([0,0,+70])
//translate([28,4-phoneWidth-76,+9-phoneLength])
//cube([phoneThickness,phoneWidth,phoneLength]);
////screen
//color([0.1,+0.1,0.1],0.8)
//rotate([0,0,+70])
//translate([27.8,7-phoneWidth-76,+12-phoneLength])
//cube([phoneThickness,-6+phoneWidth,-6+phoneLength]);
//
////laptop top
//color("Grey")
//rotate([0,0,90])
//translate([+3.0,-75-phoneWidth+76,-295])
//cube([laptopThickness,400,300]);
////screen
//color([0.1,+0.1,0.1],1.8)
//rotate([0,0,90])
//translate([+2.9,-66-phoneWidth+76,-276])
//cube([laptopThickness,380,270]);
////laptop bottom
//color("Grey")
//rotate([0,77,90])
//translate([+278,+1-phoneWidth,-373])
//cube([20,399,317]);