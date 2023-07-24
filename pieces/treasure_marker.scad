include <token.scad>

// A "squarcle" with a jewel and ring

art_width = (SQUARE_SIDE_LENGTH / 2) - (WALL_THICKNESS * 2);

token() {
	diamond_side = art_width / 2;
	ymove(art_width / 4)
		zrot(45)
			square([diamond_side, diamond_side], true);
}

top_half()
	ymove(- art_width / 4)
		rot([0,90,90])
			torus(
				r_maj = art_width / 2,
				r_min = WALL_THICKNESS
				);