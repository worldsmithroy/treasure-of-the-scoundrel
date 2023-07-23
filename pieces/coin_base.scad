include <BOSL2/std.scad>

// Basic Coin generation logic

// The default diameter of a coin (used to skew sizes)
BASE_DIAMETER = 100;

// The thickness of the coin
default_coin_thickness = 2;

// Creates a coin with value, dimension, and design
// value 	: the value displayed on the coin
// diameter : the diameter of the coin
// children	: 2D Patterns displaying on the coin
//		Child 0 : The 2D design that will be displayed on the front face of the coin
//		Child 1 : The 2D design that will be displayed on the reverse face of the coin
// If only one design is provided, it will be displayed on both sides
module render_coin (diameter = BASE_DIAMETER, thickness = default_coin_thickness) {
	radius = diameter / 2;
	reverse_face_id = ($children > 1) ? 1 : 0;

	coin_base(radius, thickness);
    zmove(thickness) coin_face(diameter) children(0);
    mirror([1,0,0]) coin_face(diameter) children(reverse_face_id);
}

// Produces a blank coin body
module coin_base (radius, thickness = default_coin_thickness) {
	up(thickness / 2) cylinder(
		r = radius,
		h = thickness
		);
	rotate_extrude(angle = 360)
    	xmove(radius)
    		square([thickness, thickness * 2]);
}

// Renders a 2D image (passed in as a child) into a coin-face
// Diameter  : The diameter of the coin
// Thickness : The thickness of the coin
// Child 	 : The 2D image to be rendered (set in BASE_DIAMETER)
module coin_face(diameter = BASE_DIAMETER, thickness = default_coin_thickness) {
	size_shift = diameter / BASE_DIAMETER;
    linear_extrude(thickness) scale(size_shift) children(0);
}