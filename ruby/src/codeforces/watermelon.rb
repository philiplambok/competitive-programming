class Watermelon
  def initialize(weight)
    @weight = weight
  end

  def even_divided?
    @weight = @weight.to_i
    if @weight.even? && @weight > 2
      "YES"
    else
      "NO"
    end
  end
end

# MAIN
# weight = gets.strip
# watermelon = Watermelon.new(weight)
# puts watermelon.even_divided?
