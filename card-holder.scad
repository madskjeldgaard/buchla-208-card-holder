/*

A simple parametric card holder for Buchla 208 program cards

*/
numCards=3;

spaceBetween=30;

// Card
len=116;
width=2;
height=8;

//----
heightBase=4;
sideBase=10;
difference(){

difference(){
	translate([(-sideBase)/2,-spaceBetween,0])cube([len + sideBase, (numCards + 1) * spaceBetween, height + heightBase], center=false);
	for (i=[0:numCards-1]){
		#color("green") translate([0, i * spaceBetween, heightBase]) cube([len, width, height],center=false);
	}
}
translate([0,-(spaceBetween-(10/2)+2),(height+heightBase/3)])
{
	// Weasel
	weaselHeight=10; weaselConvex=10;
	linear_extrude(height = weaselHeight, center = true, convexity = weaselConvex, twist = 0)
		scale([0.25,0.25,0.25])#import("weasel.svg");

}
}
