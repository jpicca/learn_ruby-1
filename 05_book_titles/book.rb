class Book
# write your code here
  def title
    @name
  end

  def title=(string)
    @name = string.split.map { |x|
      if (x == "and" || x == "or" || x == "of" || x == "with" || x == "from" || x == "for" || x == "in" || x == "the" || x == "a" || x == "an")
        x
      else
        x.capitalize
      end
    }.join(" ")
    @name = @name.slice(0,1).capitalize + @name.slice(1..-1)
  end

end

