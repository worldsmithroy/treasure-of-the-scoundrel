require "erb"
require_relative "models/ghost.rb"

# Renders a CSV of card data into cards

CARD_TYPES_MAP = {
	:ghost => Ghost,
}

def render_card (type)
	template_path = "templates/#{type}.html.erb"
	template = File.read(template_path)
	card_template = ERB.new(template)

	ghost = Ghost.new
	card = card_template.result(binding)
	puts card
end

render_card("ghost")