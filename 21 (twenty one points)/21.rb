#puts "♠ ♥ ♦ ♣"
#хеш значений карты
@caloda1 = { "♠6" => 6, "♥6" => 6, "♦6" => 6, "♣6" => 6,
           "♠7" => 7, "♥7" => 6, "♦7" => 6, "♣7" => 7,
           "♠8" => 6, "♥8" => 6, "♦8" => 6, "♣8" => 8,
           "♠9" => 9, "♥9" => 9, "♦9" => 9, "♣9" => 9,
           "♠10" => 10, "♥10" => 10, "♦10" => 10, "♣10" => 10,
           "♠B" => 2, "♥B" => 2, "♦B" => 2, "♣B" => 2,
           "♠Q" => 3, "♥Q" => 3, "♦Q" => 3, "♣Q" => 3,
           "♠K" => 4, "♥K" => 4, "♦K" => 4, "♣K" => 4,
           "♠T" => 11, "♥T" => 11, "♦T" => 11, "♣T" => 11, 
          }
#Массив карт
@caloda2 = ["♠6", "♥6", "♦6", "♣6",
           "♠7", "♥7", "♦7", "♣7",
           "♠8", "♥8", "♦8", "♣8",
           "♠9", "♥9", "♦9", "♣9",
           "♠10", "♥10", "♦10", "♣10",
           "♠B", "♥B", "♦B", "♣B",
           "♠Q", "♥Q", "♦Q", "♣Q",
           "♠K", "♥K", "♦K", "♣K", 
           "♠T", "♥T", "♦T", "♣T"
          ]
# количетсво очков игрока
@suma = 0

# карты игрока
@carta = " "

#метод раздачи карт игроку
def carta

  random = @caloda2[rand(0..35)]

  @suma += @caloda1[random]
    
  @carta += " #{random}"
    
end

#Выдача 2 карт
carta 
carta

puts "ваши каврты #{@carta} сумма которых равна #{@suma}"

puts "Еще (1) Хватит (0)"

# Взять пас карты
loop do

  if @suma >= 22
    puts "Увас перебор (#{@suma}) вы проиграли"
    exit
  end

  hod = gets.to_i

  if hod == 1
    carta
    puts "ваши каврты #{@carta} сумма которых равна #{@suma}"

    puts "Еще (1) Хватит (0)"
 
  elsif 
    hod == 0
    break

  end

end

# сумма очков пк 
@pc_sum = 0
# карты пк
@pc_carta = " "

#набор карт пк
loop do
  if @pc_sum >= 17
    break
  else

    #проверка на совпадение карт с игроком
    loop do

      random = @caloda2[rand(0..35)]

      @carta.split.each do |x|

        if x == random
          random = @caloda2[rand(0..35)]
        else
          @pc_sum += @caloda1[random]
      
          @pc_carta += " #{random}"
        end
      end
      #выход из цылка проверки
      break

    end
  end

end

# варианты если у игрока не перебор
if @pc_sum >= 22
    puts "вы победили у пк перебор (#{@pc_sum})"
  elsif
    @suma == @pc_sum 
    puts "Ничья! Карты пк #{@pc_carta} (#{@pc_sum})"
  elsif
    @suma > @pc_sum
    puts "Победа! Карты пк #{@pc_carta} (#{@pc_sum})"
  elsif
    @suma < @pc_sum
    puts "Поражение :с Карты пк #{@pc_carta} (#{@pc_sum})"
end

