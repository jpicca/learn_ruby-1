#write your code here


def translate string
  
  def oneword string
    if string[0] == "a" || string[0] == "e" || string[0] == "i" || string[0] == "o" || string[0] == "u"
      string = string + "ay"
    elsif string[0..1] == "qu"
      letters = string[0..1]
      string.slice!(0..1)
      string + letters + "ay"
    elsif string[1] == "a" || string[1] == "e" || string[1] == "i" || string[1] == "o" || string[1] == "u"
      letter = string[0]
      string.slice!(0)
      string + letter + "ay"
    elsif string[2] == "a" || string[2] == "e" || string[2] == "i" || string[2] == "o" || string[2] == "u"
      if string[1..2] == "qu"
        letters = string[0..2]
        string.slice!(0..2)
        string + letters + "ay"
      else
        letters = string[0..1]
        string.slice!(0..1)
        string + letters + "ay"
      end
    else
      letters = string[0..2]
      string.slice!(0..2)
      string + letters + "ay"
    end
  end

  if string.split.length == 1
    oneword string
  else
    string.split.map { |x|
      oneword x
    }.join(" ")
  end 
    

end
