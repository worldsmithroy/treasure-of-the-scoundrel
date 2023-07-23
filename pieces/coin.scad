include <BOSL2/std.scad>
include <BOSL2/transforms.scad>
include <BOSL2/shapes2d.scad>

// Basic Coin generation logic

// The default diameter of a coin (used to skew sizes)
base_diameter = 100;

// The thickness of the coin
coin_thickness = 2;

coin(25) text(
		        text = "100",
		        font = "Palatino",
		        size = 25 / 3,
		        halign = "center",
		        valign = "center"
		        );;

// Creates a coin with value, dimension, and design
// value 	: the value displayed on the coin
// diameter : the diameter of the coin
// children	: 2D Patterns displaying on the coin
//		Child(0) : The design that will be displayed on the front face of the coin
module coin (diameter = base_diameter) {
	radius = diameter / 2;
	coin_base(radius);
    // up(coin_thickness) coin_face() children(0);
//    if ($children > 1) {
//        mirror([1,0,0]) linear_extrude(coin_thickness) children(1);
//    } else {
//    	mirror([1,0,0]) linear_extrude(coin_thickness) children(0);
//    }
}

module coin_base (radius) {
	cylinder(
		r = radius,
		h = coin_thickness
		);
	up(coin_thickness / 2)
		rotate_extrude(angle = 360)
        	xmove(radius) zrot(90)
            	teardrop2d(
            		r = coin_thickness
            	);
}

module coin_face(thickness = coin_thickness) {
    linear_extrude(thickness) children(0);
}