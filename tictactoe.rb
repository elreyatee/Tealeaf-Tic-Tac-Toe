# Ellery Temple
# 10/19/14
# Lesson 1 - Tic Tac Toe Game

# 1. Draw game board
# 2. Ask player to choose a tile to place X
#   2a. Make sure spot is not taken (use stack to track moves? include?)
#   2b. Place move on game board
# 3. Computer make a random play
# 4. Winning cases
# 5. Ask player to play again or quit
#   5a. If yes, clear game board

require 'pry'

TILES = {'1' => ' ', '2' => ' ', '3' => ' ', '4' => ' ', '5' => ' ', '6' => ' ',
         '7' => ' ', '8' => ' ', '9' => ' '}

MARKED = []

def draw_game_board
  puts "     |     |     "
  puts "  #{TILES['1']}  |  #{TILES['2']}  |  #{TILES['3']}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{TILES['4']}  |  #{TILES['5']}  |  #{TILES['6']}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{TILES['7']}  |  #{TILES['8']}  |  #{TILES['9']}  "
  puts "     |     |     "
end

def clear_game_board
  (1..TILES.length).each {|board| TILES[board.to_s] = ' '}
  MARKED.clear
end

def computer_play
  # Available choices
  choice = (TILES.keys - MARKED).sample

  case
  when choice == '1'
    TILES['1'] = 'O'
  when choice == '2'
    TILES['2'] = 'O'
  when choice == '3'
    TILES['3'] = 'O'
  when choice == '4'
    TILES['4'] = 'O'
  when choice == '5'
    TILES['5'] = 'O'
  when choice == '6'
    TILES['6'] = 'O'
  when choice == '7'
    TILES['7'] = 'O'
  when choice == '8'
    TILES['8'] = 'O'
  when choice == '9'
    TILES['9'] = 'O'
  end

  MARKED.push(choice)
  draw_game_board
end

def place_move_on_board(choice)

  if MARKED.include?(choice)
    puts "Tile already marked, please choose another tile."
  else
    MARKED.push(choice)

    case
    when choice == '1'
      TILES['1'] = 'X'
    when choice == '2'
      TILES['2'] = 'X'
    when choice == '3'
      TILES['3'] = 'X'
    when choice == '4'
      TILES['4'] = 'X'
    when choice == '5'
      TILES['5'] = 'X'
    when choice == '6'
      TILES['6'] = 'X'
    when choice == '7'
      TILES['7'] = 'X'
    when choice == '8'
      TILES['8'] = 'X'
    when choice == '9'
      TILES['9'] = 'X'
    end
    computer_play
  end
end

def any_winners?
  case
  when ((TILES['1'] == 'X' && TILES['2'] == 'X' && TILES['3'] == 'X') || (TILES['4'] == 'X' && TILES['5'] == 'X' && TILES['6'] == 'X') || 
       (TILES['7'] == 'X' && TILES['8'] == 'X' && TILES['9'] == 'X') || (TILES['7'] == 'X' && TILES['8'] == 'X' && TILES['9'] == 'X') ||
       (TILES['1'] == 'X' && TILES['4'] == 'X' && TILES['7'] == 'X') || (TILES['2'] == 'X' && TILES['5'] == 'X' && TILES['9'] == 'X') ||
       (TILES['3'] == 'X' && TILES['6'] == 'X' && TILES['9'] == 'X') || (TILES['1'] == 'X' && TILES['5'] == 'X' && TILES['9'] == 'X') ||
       (TILES['3'] == 'X' && TILES['5'] == 'X' && TILES['7'] == 'X'))
    puts "You won!"
    true
  when ((TILES['1'] == 'O' && TILES['2'] == 'O' && TILES['3'] == 'O') || (TILES['4'] == 'O' && TILES['5'] == 'O' && TILES['6'] == 'O') || 
       (TILES['7'] == 'O' && TILES['8'] == 'O' && TILES['9'] == 'O') || (TILES['7'] == 'O' && TILES['8'] == 'O' && TILES['9'] == 'O') ||
       (TILES['1'] == 'O' && TILES['4'] == 'O' && TILES['7'] == 'O') || (TILES['2'] == 'O' && TILES['5'] == 'O' && TILES['9'] == 'O') ||
       (TILES['3'] == 'O' && TILES['6'] == 'O' && TILES['9'] == 'O') || (TILES['1'] == 'O' && TILES['5'] == 'O' && TILES['9'] == 'O') ||
       (TILES['3'] == 'O' && TILES['5'] == 'O' && TILES['7'] == 'O'))
    puts "Computer won!"
    true
  when MARKED.length == 9
    puts "All moves have been played! The game is locked"
    true
  end
end

def play_game
  draw_game_board

  loop do

    print "Choose a position (from 1 to 9) to place a piece: "

    player_choice = gets.chomp

    place_move_on_board(player_choice)

    break if any_winners? == true
  end 

  print "Would you like to play again? (Y/N)"

  play_again = gets.chomp.downcase

  if play_again == 'y'
    clear_game_board
    play_game 
  else
    return puts "Thanks for playing!"
  end
end

play_game

