require_relative 'game'

class GameLogic
  def initialize(game)
    # Сохраняем экземпляр игры для управления логикой
    @game = game
    @winner = nil  # Переменная для хранения победителя
  end

  # Метод для запуска основной логики игры
  def start_game
    loop do
      player_turn    # Ход игрока
      break if game_over?  # Проверка на окончание игры

      pc_turn        # Ход компьютера
      break if game_over?  # Проверка на окончание игры
    end
    display_final_state  # Отображаем финальное состояние игрового поля
  end

  private

  # Метод для обработки хода игрока
  def player_turn
    loop do
      @game.display_pole  # Отображаем текущее состояние игрового поля
      print "Введите номер ячейки для своего хода: "
      user_hod = gets.to_i  # Считываем ввод пользователя

      # Проверяем, занята ли ячейка
      if @game.h_pole[user_hod] == 'X' || @game.h_pole[user_hod] == '0'
        puts "Это клетка занята, выберите другую"
      else
        @game.h_pole[user_hod] = 'X'  # Обновляем игровое поле
        break  # Выходим из цикла, если ход успешен
      end
    end

    check_draw  # Проверяем на ничью после хода игрока
  end

  # Метод для обработки хода компьютера
  def pc_turn
    loop do
      pc_move = rand(1..9)  # Генерируем случайный номер ячейки для компьютера

      # Проверяем, свободна ли ячейка
      if @game.h_pole[pc_move] != 'X' && @game.h_pole[pc_move] != '0'
        @game.h_pole[pc_move] = '0'  # Обновляем игровое поле
        break  # Выходим из цикла, если ход успешен
      end
    end
  end

  # Метод для проверки окончания игры
  def game_over?
    if winner?('X')
      @winner = "Игрок"  # Сохраняем информацию о победителе
      true  # Игра закончена
    elsif winner?('0')
      @winner = "Компьютер"  # Сохраняем информацию о победителе
      true  # Игра закончена
    elsif @game.h_pole.values.none? { |value| value.is_a?(Integer) }
      @winner = "Ничья"  # Сообщаем о ничьей
      true  # Игра закончена
    else
      false  # Игра продолжается
    end
  end

  # Метод для проверки, есть ли победитель
  def winner?(marker)
    # Определяем возможные комбинации для выигрыша
    winning_combinations = [
      [1, 2, 3], [4, 5, 6], [7, 8, 9],  # строки
      [1, 4, 7], [2, 5, 8], [3, 6, 9],  # колонки
      [1, 5, 9], [3, 5, 7]              # диагонали
    ]
    
    # Проверяем, есть ли у игрока все три маркера в одной из комбинаций
    winning_combinations.any? do |combo|
      combo.all? { |pos| @game.h_pole[pos] == marker }
    end
  end

  # Метод для проверки ничьей
  def check_draw
    if @game.h_pole.values.none? { |value| value.is_a?(Integer) }
      puts 'Ничья'  # Сообщаем о ничьей
      exit  # Завершаем программу
    end
  end

  # Новый метод для отображения финального состояния игрового поля
  def display_final_state
    @game.display_pole  # Отображаем финальное состояние игрового поля
    if @winner
      puts "Победитель: #{@winner}"  # Сообщаем о победителе или ничьей
    end
  end
end