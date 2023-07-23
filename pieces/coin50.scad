include <coin.scad>

line_width = BASE_DIAMETER / 10;

coin("50", 35, false) {
	move([0, 10, 0]) zrot(60) scythe();
	xflip() move([0, 10, 0]) zrot(60) scythe();
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