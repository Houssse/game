# Хеш поле игры
h_pole = {1 => 1, 2 => 2, 3 => 3,
          4 => 4, 5 => 5, 6 => 6,
          7 => 7, 8 => 8, 9 => 9
}

#визуализация поля
def pole h
  puts " #{h[1]} | #{h[2]} | #{h[3]}  "
  puts " #{h[4]} | #{h[5]} | #{h[6]}  "
  puts " #{h[7]} | #{h[8]} | #{h[9]}  "
end

#Основной цикл логики игры
loop do

  loop do
      #показ поля
    pole h_pole

    print "Введите номер ячейки для своего хода : "
    @user_hod = gets.to_i
  
    if h_pole[@user_hod] == 'X' || h_pole[@user_hod] == '0'
      puts "Это клетка занята выберите другую"
      else
        h_pole[@user_hod] = 'X'
        break
    end
  end
  
  #проверка на наличее пустых клеток на поле 
  @proverca = 9

  if h_pole.value?(1)
  else
    @proverca = @proverca - 1
  end

  if h_pole.value?(2)
  else
    @proverca = @proverca - 1
  end

  if h_pole.value?(3)
  else
    @proverca = @proverca - 1
  end

  if h_pole.value?(4)
  else
    @proverca = @proverca - 1
  end

  if h_pole.value?(5)
  else
    @proverca = @proverca - 1
  end

  if h_pole.value?(6)
  else
    @proverca = @proverca - 1
  end

  if h_pole.value?(7)
  else
    @proverca = @proverca - 1
  end

  if h_pole.value?(8)
  else
    @proverca = @proverca - 1
  end

  if h_pole.value?(9)
  else
    @proverca = @proverca - 1
  end
  #Если все проверку выдадут false цикл остановится
  if @proverca == 0
    puts 'Ничья'
    break
  end

  # Ход компьютера проверка занитали клетка 0 или Х будет повотоярт пока не найдет пустую клетку после впишет 0 и оборвет цикл
  # Цикл не бесконечен т.к основной цикл прирвет проверка на свободные клетке на поле
  loop do
    @pc = rand(1..9)
  
    if h_pole[@pc] == 'X' || h_pole[@pc] == '0'
      else
        h_pole[@pc] = '0'
        break
    end
  end

  #Варианты проверки победы игрока Х (9 вариантов)
  if h_pole[1] == 'X' && h_pole[2] == 'X' && h_pole[3] == 'X'
    puts "Win user"
    break

  elsif h_pole[1] == 'X' && h_pole[4] == 'X' && h_pole[7] == 'X'
    puts "Win user"
    break
    
  elsif h_pole[1] == 'X' && h_pole[5] == 'X' && h_pole[9] == 'X'
    puts "Win user"
    break

  elsif h_pole[2] == 'X' && h_pole[5] == 'X' && h_pole[8] == 'X'
    puts "Win user"
    break

  elsif h_pole[3] == 'X' && h_pole[6] == 'X' && h_pole[9] == 'X'
    puts "Win user"
    break

  elsif h_pole[3] == 'X' && h_pole[5] == 'X' && h_pole[7] == 'X'
    puts "Win user"
    break
  end

  #Проверка вариантов победы пк 0 (9 вариантов) если не один варинат не выдаст true цикл возбновится 
  if h_pole[1] == '0' && h_pole[2] == '0' && h_pole[3] == '0'
    puts "Win pc"
    break

  elsif h_pole[1] == '0' && h_pole[4] == '0' && h_pole[7] == '0'
    puts "Win pc"
    break
    
  elsif h_pole[1] == '0' && h_pole[5] == '0' && h_pole[9] == '0'
    puts "Win pc"
    break

  elsif h_pole[2] == '0' && h_pole[5] == '0' && h_pole[8] == '0'
    puts "Win pc"
    break

  elsif h_pole[3] == '0' && h_pole[6] == '0' && h_pole[9] == '0'
    puts "Win pc"
    break

  elsif h_pole[3] == '0' && h_pole[5] == '0' && h_pole[7] == '0'
    puts "Win pc"
    break
  end
end