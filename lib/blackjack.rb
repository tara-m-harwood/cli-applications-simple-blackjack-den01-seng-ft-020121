def welcome
  puts "Welcome to the Blackjack Table"
end


def deal_card
  rand(11) + 1
end


def display_card_total(total)
  puts "Your cards add up to #{total}"
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
 input = gets.chomp
end


def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end


def initial_round
  card_sum = deal_card + deal_card
  display_card_total(card_sum)
  card_sum
end


def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    card_total += deal_card
  elsif user_input != 's'
    invalid_command
    prompt_user
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = hit?(initial_round)
  until card_total > 21
    hit?(card_total)
  end
  end_game(card_total)
end

runner


