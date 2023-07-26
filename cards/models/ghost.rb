class Ghost

	attr_reader :title, :image, :attributes, :flavor_text
	attr_reader :rank, :health, :damage, :dodge, :strike

	def initialize
		@title = "Soul"
		@image = "../assets/crown.svg"
		@rank = 1
		@health = 4
		@damage = 1
		@dodge = 0
		@strike = 0
		@attributes = "Soul"
		@flavor_text = "A sad soul who mopes around the ship"
	end

end