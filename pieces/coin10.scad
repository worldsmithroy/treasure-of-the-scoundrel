include <coin.scad>

line_width = BASE_DIAMETER / 10;

coin("10", 25) {
	// Calculations to inscribe the diamond
	radius = BASE_DIAMETER / 2;
	square_chord = radius * sqrt(2);

	zrot(45) difference() {
		square(square_chord, true);
		square(square_chord - line_width * 2, true);
	}
}
