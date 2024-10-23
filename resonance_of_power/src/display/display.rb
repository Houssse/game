require_relative 'display_info'

  # Очищает экран
  def clear_screen
    system('clear') || system('cls')
  end

  # Выводит информацию о герое
  def display(hero)
    clear_screen
    info_hero(hero)
    puts "\n" * 10
    puts "-" * 60
    actions_menu
  end

