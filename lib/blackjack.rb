def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card 
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user #prompts user for s or h 
  user_input = get_user_input #stores user input in user-input var
  if user_input == 's' #if user inputs s 
    return card_total #do nothing and return card total
  elsif user_input == 'h' #if user inputs h 
    return (deal_card + card_total) #deals a card and increments/returns card total
  else #if neither h or s was inputted
    invalid_command #returns invalid command
    hit?(card_total)
  end 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome #welcome player 
  card_total = initial_round #deals two cards and returns/puts card total i.e. 17
  while card_total < 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end 
  end_game(card_total)
end
    
