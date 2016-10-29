#write your code here

def echo string

  string

end

def shout string

  string.upcase

end

def repeat(string, repeat = 2)

  end_string = (string + " ")*repeat
  end_string.chop

end

def start_of_word(string, number)

  string[0..(number-1)]

end

def first_word string

  string.partition(" ").first

end

def titleize string

  split_string = string.split
  final_string = split_string.map { |x| 
    if (x != "the" && x != "of" && x != "over" && x != "and")    
      x.capitalize
    else
      x
    end 
  }

  final_string[0] = final_string[0].capitalize
  final_string.join(" ")  

end
  
