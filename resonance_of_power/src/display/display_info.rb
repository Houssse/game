def hp_bar(current_hp, max_hp)
  total_blocks = 20
  filled_blocks = (current_hp * total_blocks / max_hp).to_i
  empty_blocks = total_blocks - filled_blocks

  filled = '█' * filled_blocks
  empty = '░' * empty_blocks
  "[#{filled}#{empty}]"
end

# Выводит HP бар героя
def info_hero(hero)
  puts "====================="
  puts "Имя: #{hero[:name]}"
  puts "HP: #{hero[:hp]}/#{hero[:max_hp]} [#{'█' * (hero[:hp] * 20 / hero[:max_hp])}#{'░' * (20 - (hero[:hp] * 20 / hero[:max_hp]))}]"
  puts "Деньги: #{hero[:money]}"
  puts "====================="
end

def actions_menu
  puts "Осмотреться Поговорить Действие"
end