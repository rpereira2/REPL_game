def doesnt_have_it
  puts "he doesnt have it!, who has it?"
end

def error_message
   puts "What?? Please tell me who the bartender, owner or the girl??! Im in a rush!"
end

def error_option
  puts "please type YES or NO, hurry!! Im in a rush!"
  choose
end


def get_name
  puts "Hey! What's your name?"
  @name = gets.chomp
end

def choose
  puts "Ok #{@name}. Do you want to help me find my lottery ticket? type YES or NO"
  option = gets.chomp.downcase

  case option
    when 'yes'
     puts "Ok, #{@name} I'm glad you said #{option}! lets start at the bar I was in 2 hours ago"
     puts "Last time I had it there were 3 people left. I think one of them stole it from me!"
     puts "Look, they are still here: the bartender, owner or the biker"
     puts "Who do you think stole it?"

     guess = gets.chomp

       while guess != "owner"
         case guess
           when "biker", "the biker"
            doesnt_have_it
           when "bartender","the bartender"
            doesnt_have_it
          else
            error_message
         end
           guess = gets.chomp
       end

       if guess == "owner"
         puts "Lets search him!"
         puts "you were right, the OWNER had it!! BY THE WAY ITS THE WINNING NUMBER!"
       end

    when 'no'
       puts "YOU MISSED OUT! I'TS THE WINNING NUMBER!"
    else
      error_option
    end
end

def game
  get_name
  choose
end

game
