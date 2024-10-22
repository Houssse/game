require_relative 'game'
require_relative 'game_logic'

# Создаем экземпляр класса Game для хранения состояния игры
game = Game.new
# Создаем экземпляр класса GameLogic для управления логикой игры
game_logic = GameLogic.new(game)
game_logic.start_game