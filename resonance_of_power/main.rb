require_relative 'src/display/display'
require_relative 'src/hero'

hero = @hero
location = load_location_discripton('data/locations.txt')

display(hero, location)