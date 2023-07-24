include <BOSL2/std.scad>

// Size of a game square
SQUARE_SIDE_LENGTH = 20;

// Minimum thickness of printed walls
WALL_THICKNESS = 1.5;

// How deep wells are (for supplemental assets)
NESTING_OFFSET = WALL_THICKNESS;

// Height of printed piece
PIECE_HEIGHT = WALL_THICKNESS * 2;


token_side_length = SQUARE_SIDE_LENGTH / 2;

// Renders a standard token
// Children are 2D image rendered on the token
module token() {
	linear_extrude(PIECE_HEIGHT)
		rect(
			size = [token_side_length, token_side_length],
			rounding = token_side_length / 4
			);
	up(PIECE_HEIGHT)
		linear_extrude(WALL_THICKNESS)
			children();
}