class Timer
  #write your code here
  attr_accessor :seconds  


  def initialize
    @seconds = 0
  end

  def time_string
    
    hours   = @seconds / 3600     
    minutes = (@seconds - hours*3600)/60
    seconds = @seconds - hours*3600 - minutes*60

    hours   = two_char hours
    minutes = two_char minutes 
    seconds = two_char seconds 
    
    "#{hours}:#{minutes}:#{seconds}"

  end

  def two_char num
    if num < 10
      num = "0" + num.to_s
    else
      num.to_s
    end
  end

end


