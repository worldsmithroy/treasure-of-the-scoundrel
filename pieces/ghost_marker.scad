include <BOSL2/std.scad>

SQUARE_SIDE_LENGTH = 20;

wall_thickness = 1.5;
nesting_offset = wall_thickness;

piece_height = wall_thickness * 2;

// Radius of the inner shape
inner_radius = SQUARE_SIDE_LENGTH / 4;

// Drawing the piece:
difference() {
	pentacle(SQUARE_SIDE_LENGTH / 2);
	up(piece_height - nesting_offset + 0.1)
		linear_extrude(nesting_offset)
			zrot(180) pentagon(inner_radius);
}

module pentacle (radius) {
	linear_extrude(piece_height) shell2d(wall_thickness) star(
		n = 5,
		ir = radius / 2,
		or = radius
		);
	linear_extrude(piece_height) zrot(180) pentagon(radius / 2 + wall_thickness);
}