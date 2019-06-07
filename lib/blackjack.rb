def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(n)
  # code #display_card_total here
  puts "Your cards add up to #{n}"
  
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
end



def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    card = deal_card
    total = card + total
    display_card_total(total)
    return total
  elsif user_input == 's'
    return total
  else
    invalid_command
  end
end