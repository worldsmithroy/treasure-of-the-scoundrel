include <coin.scad>

coin("100", 60, false) {
	ymove(25) death_crown();
}

module death_crown () {
	difference() {
		crown();
		ymove(-7) skull();
	}
}

// Renders the crown
module crown () {
    scale(0.4)
		import(
			file = "../assets/crown.svg",
			center = true,
			dpi = 96
			);
}

module skull () {
    scale(0.15)
		import(
			file = "../assets/skull.svg",
			center = true,
			dpi = 96
			);
}
