# Ellery Temple Jr.
# 10/18/14
# Tic-Tac-Toe Game

# 1. Draw video game board
# 2. Ask player to choose where to place move
# 3. Computer makes a move
# 4. Each subsequent move reduces available moves
# 5. As game loops, it checks for winner - defined as XXX or OOO
# 6. Game ends, asks player to play again. If no, exit and if yes, clear board

require 'pry'

TILES = {t1: '', t2: '', t3: '', t4: '', t5: '', t6: '', t8: '', t9: ''}

def draw_game_board
  # Video game board

  puts "         |         |         "
  puts "         |         |         "
  puts "    #{TILES[:t1]}     |     #{TILES[:t2]}    |     #{TILES[:t3]}    "
  puts "         |         |         "
  puts "         |         |         "
  puts "---------+---------+---------"
  puts "         |         |         "
  puts "         |         |         "
  puts "    #{TILES[:t4]}     |     #{TILES[:t5]}    |     #{TILES[:t6]}    "
  puts "         |         |         "
  puts "         |         |         "
  puts "---------+---------+---------"
  puts "         |         |         "
  puts "         |         |         "
  puts "    #{TILES[:t7]}     |     #{TILES[:t8]}    |     #{TILES[:t9]}    "
  puts "         |         |         "
  puts "         |         |         "
end

draw_game_board


