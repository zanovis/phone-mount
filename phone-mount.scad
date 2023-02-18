phoneLength=155; // 155
phoneWidth=75; // 75
phoneThickness=12; // 12
laptopThickness=5; // 5
clipWidth=76; // 76
materialThickness=3;
clipHeight=19;

difference() {
    translate([0,4-laptopThickness,0])
    cube([clipWidth,6+laptopThickness,clipHeight]);
    translate([-1,7-laptopThickness,-1])
        cube([80,laptopThickness,17]);
        translate([-1,3-laptopThickness,-7])
        cube([80,laptopThickness,18]);
    translate([-1,-laptopThickness,-7])
        cube([21,60,28]);
     
}

//rotate([0,60,0])
//    translate([0,7.5,0])
//        cube([155,2.5,10]);

//Laptop cross-bar
rotate([90,0,0])
translate([0,0,-10])
linear_extrude(height=materialThickness, center=false, convexity=1, scale=[0], $fn=1)
polygon( points=[
            [20,0],
            [34,0],
            [clipWidth,15-phoneLength+13],
            [clipWidth,19-materialThickness-phoneLength],
            [-9+clipWidth,19-materialThickness-phoneLength]] );

//Phone cross-bar
rotate([90,0,0])
rotate([0,-20,0])
translate([-9.3,0,-40.26])
linear_extrude(height=materialThickness, center=true, convexity=1, scale=[0], $fn=1)
polygon( points=[
            [76,-2],
            [76,19],
            [12+clipWidth+phoneWidth,22-phoneLength+13],
            [12+clipWidth+phoneWidth,19-phoneLength-materialThickness],
            [+9+clipWidth+phoneWidth,19-phoneLength-materialThickness]] );

//Down-bar
rotate([90,0,0])
rotate([0,-20,0])
translate([-9.3,+0.0,-40.26])
linear_extrude(height=materialThickness, center=true, convexity=0, scale=[0], $fn=1)
polygon( points=[   [87,-10],
                    [76,19],
                    [clipWidth,19-phoneLength],
                    [clipWidth+10,19-phoneLength]] );

//Phone bottom-bar
rotate([0,0,-20])
translate([66.76,+38.7,13-phoneLength+materialThickness])
cube([10+phoneWidth,3,14]);

//Clipbox
difference() {
    rotate([90,0,0])
    rotate([0,-20,0])
    translate([-10.3,0,-39])
    linear_extrude(height=4+phoneThickness, center=false, convexity=0, scale=[0], $fn=1)
    polygon( points=[   [13+phoneWidth+clipWidth,19-materialThickness-phoneLength],
                        [13+clipWidth+phoneWidth,35-phoneLength],
                [+10+clipWidth+phoneWidth,35-phoneLength],
                [-14+clipWidth+phoneWidth,19-materialThickness-phoneLength]] );
                
    rotate([0,0,-20])
    translate([61.0,38-phoneThickness,22-phoneLength-materialThickness])
    cube([13+phoneWidth,+3+phoneThickness,22]);
    rotate([0,0,-20])
        translate([26,+8,26-phoneLength])
    cube([-3+phoneWidth,6+phoneThickness,11]);
            rotate([0,0,-20])
        translate([-5+clipWidth,+29-phoneThickness,23-phoneLength])
    cube([-2+phoneWidth,phoneThickness,11]);
}



//bottom left phone rest
rotate([0,0,-17])

        translate([-2,+10.1,20.5-phoneLength-materialThickness])
    linear_extrude(height=3, center=true, convexity=0, scale=[0], $fn=1)
    polygon( points=[   [clipWidth,12],
                        [13.0+clipWidth,12],
                [26+clipWidth,25],
                [-4+clipWidth,25],]);

//filler block-bottom
translate([-0.1,+0.48,-139])
    linear_extrude(height=-7+clipHeight, convexity=0, scale=[0], $fn=1)

    polygon( points=[   [-8.9+clipWidth,9],
                        [+1.05+clipWidth,15.9],
                [+0+clipWidth,9.0],] );

//filler block-top
translate([-0.1,+0.48,9.49])
    linear_extrude(height=clipHeight, center=true, convexity=0, scale=[0], $fn=1)

    polygon( points=[   [-13+clipWidth,9],
                        [+1.05+clipWidth,15.9],
                [+0+clipWidth,9.0],] );
                
//support block-top
translate([-0.1,+0.48,+0.0])
    linear_extrude(height=-6+clipHeight, convexity=0, scale=[0], $fn=1)

    polygon( points=[   [+0+clipWidth,13],
                        [+3.9+clipWidth,12.9],
                [+0+clipWidth,9.0],] );
                
//bottom retaining clip
        translate([76,+4.5-laptopThickness,+16.0-phoneLength])
    cube([2,9+laptopThickness,9+materialThickness]);
        translate([69.5,+4.5-laptopThickness,16-phoneLength])
    cube([6.5,3,9+materialThickness]);

//top phone retainer
rotate([90,0,0])
rotate([0,-20,0])
        translate([+3.3,-6,-37.1+phoneThickness])
    linear_extrude(height=2, center=true, convexity=0, scale=[0], $fn=1)
    polygon( points=[   [-8+clipWidth,19],
                        [-4+clipWidth,19],
                        [-1+clipWidth,25],
                [-8+clipWidth,25],] );
rotate([180,+0,-20])
        translate([-9.2+clipWidth,-25.1,-19.0])   
                cube([5,-11+phoneThickness,6]);
                
                
//pixel6a
//color("Black")
//rotate([0,180,+70])
//translate([-38.6,-149.5-phoneWidth+clipWidth,-20])
//cube([phoneThickness,phoneWidth,phoneLength]);

////laptop top
//color("Grey")
//rotate([0,180,90])
//translate([-7.0,-77-phoneWidth+clipWidth,-16])
//cube([laptopThickness,400,300]);
////laptop bottom
//color("Grey")
//rotate([0,77,90])
//translate([+278,-77-phoneWidth+clipWidth,-358])
//cube([laptopThickness*4,400,300]);