include <token.scad>

// Radius of the inner shape
inner_radius = SQUARE_SIDE_LENGTH / 4;

// Drawing the piece:
difference() {
	pentacle(SQUARE_SIDE_LENGTH / 2);
	up(PIECE_HEIGHT - NESTING_OFFSET + 0.1)
		linear_extrude(NESTING_OFFSET)
			zrot(180) pentagon(inner_radius);
}

module pentacle (radius) {
	linear_extrude(PIECE_HEIGHT) shell2d(WALL_THICKNESS) star(
		n = 5,
		ir = radius / 2,
		or = radius
		);
	linear_extrude(PIECE_HEIGHT) zrot(180) pentagon(radius / 2 + WALL_THICKNESS);
}