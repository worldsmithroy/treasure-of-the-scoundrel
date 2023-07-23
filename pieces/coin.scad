include <coin_base.scad>
include <BOSL2/std.scad>

FONT = "Palatino:style=bold";

// Renders a coin with a given front face and a semi-standard back
// value 	: The value of the coin to be displayed
// diameter : The diameter of the coin
// child 	: The 2D image to be displayed on the front of the coin
module coin (value = "", diameter = BASE_DIAMETER) {
	render_coin(diameter) {
		children(0);
        rear_face(value);
    }
}

// Generates a standard rear-face for coins
// Design is:
// - A cross dividing the coin into 4 spaces
// - A pair of skulls
// - A pair of the coin's value
module rear_face (value = "") {
	rect(
		size = [10, 75],
		rounding = -2.5
		);
	zrot(90) rect(
		size = [10, 75],
		rounding = -2.5
		);
	move([20, 20, 0]) rear_number(value);
	move([-20, -20, 0]) rear_number(value);
    move([20, -20, 0]) skull();
    move([-20, 20, 0]) skull();
}

// Renders the rear number
module rear_number (value = "") {
	font_size = BASE_DIAMETER / 10;

	text(
		text = value,
		size = font_size,
		font = FONT,
		halign = "center",
		valign = "center");
}

// Renders the skull
module skull () {
    scale(0.15)
		import(
			file = "../assets/skull.svg",
			center = true,
			dpi = 96
			);
}