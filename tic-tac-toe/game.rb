class Game
  attr_accessor :h_pole

  def initialize
    # Инициализируем игровое поле с номерами ячеек
    @h_pole = {1 => 1, 2 => 2, 3 => 3,
                4 => 4, 5 => 5, 6 => 6,
                7 => 7, 8 => 8, 9 => 9}
  end

  # Метод для отображения игрового поля
  def display_pole
    puts " #{h_pole[1]} | #{h_pole[2]} | #{h_pole[3]} "
    puts " #{h_pole[4]} | #{h_pole[5]} | #{h_pole[6]} "
    puts " #{h_pole[7]} | #{h_pole[8]} | #{h_pole[9]} "
  end
end