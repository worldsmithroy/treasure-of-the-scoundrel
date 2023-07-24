include <BOSL2/std.scad>

// Size of a game square
SQUARE_SIDE_LENGTH = 20;

// Minimum thickness of printed walls
WALL_THICKNESS = 1.5;

// How deep wells are (for supplemental assets)
NESTING_OFFSET = WALL_THICKNESS;

// Height of printed piece
PIECE_HEIGHT = WALL_THICKNESS * 2;


token_size_length = SQUARE_SIDE_LENGTH / 2;



// Renders a standard token
module token() {
	rect(
		size = [token_size_length, token_size_length],
		rounding = token_size_length / 4
		);
}