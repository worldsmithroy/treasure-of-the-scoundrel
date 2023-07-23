include <coin.scad>

line_width = BASE_DIAMETER / 10;

coin("50", 35) {
	move([2,22,0]) zrot(97) scythe();
	ymove(-20) zrot(275) scythe();
}

// Renders the scythe
module scythe () {
    scale(0.4)
		import(
			file = "../assets/scythe.svg",
			center = true,
			dpi = 96
			);
}