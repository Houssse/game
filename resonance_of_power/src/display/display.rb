require_relative 'display_info'
require_relative '../locations/location_manager'

  # Очищает экран
  def clear_screen
    system('clear') || system('cls')
  end

  # Интерфейс 
  def display(hero, location)
    clear_screen
    info_hero(hero)
    puts "\n" * 2
    location_info(location)
    puts "-" * 60
    actions_menu
  end

