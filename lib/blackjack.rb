def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  card = Random.rand(1..10)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
#code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp.strip

  # code #get_user_input here
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # cde #end_game here
end

def initial_round
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
    # code #initial_round here
end

def hit?(card_total)
  prompt_user
   answer = get_user_input
   if answer == "h"
    card_total += deal_card
  elsif answer == "s"
    card_total
    else
      invalid_command
  end

  # code hit? here
end

def invalid_command
  puts "sorry invalid"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
  

  # code runner here
end
    
