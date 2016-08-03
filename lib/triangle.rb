require 'pry'

class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3

  @@sides = []

  def initialize(length1, length2, length3)
    @length1 = length1
    @@sides << length1
    @length2 = length2
    @@sides << length2
    @length3 = length3
    @@sides << length3
  end

  def kind#(length1, length2, length3)

    #kind_arr = @@sides.sort.uniq

    #elsif (kind_arr[0]*2) <= kind_arr[-1]
    #  raise TriangleError

    # if @@sides.uniq.size.to_i == 1
    #   :equilateral
    # elsif @@sides.uniq.size == 2
    #   :isosceles
    # elsif @@sides.uniq.size == 3
    #   :scalene
    # elsif @@sides.sort[0] <= 0
    #     raise TriangleError
    # end

    # case @@sides.uniq.size
    # when 1 then :equilateral
    # when 2 then :isosceles
    # else        :scalene
    # end

    # length1, length2, length3 = [length1, length2, length3].sort
    # if (length1 <= 0) || (length1 + length2 <= length3)
    #   raise TriangleError
    # elsif length1 == length3
    #   :equilateral
    # elsif (length1 == length2) || (length2 == length3)
    #   :isosceles
    # else
    #   :scalene
    # end
  #
    #length1, length2, length3 = [length1, length2, length3].sort
    #if (length1 <= 0) || (length2 <= 0) || (length3 <= 0)
    #begin
    #  raise TriangleError#, "illegal"
    #rescue TriangleError => error
      #puts error.message
    #end
    #elsif length
    #  raise TriangleError
    if @@sides.sort[0] <= 0
      raise TriangleError
    elsif (length1 == length2) && (length2 == length3)
      :equilateral # length1 == length2 && length2 == length3
    elsif (length1 == length2) || (length1 == length3) || (length2 == length3)
      :isosceles
    elsif (length1 != length2) && (length1 != length3)
      :scalene

      #binding.pry
    end
  end

  # a, b, c = [a, b, c].sort
  # raise TriangleError if a <= 0 or a + b <= c
  # return :equilateral if a == c
  # return :isosceles if a == b or b == c
  # return :scalene

  # case [a,b,c].uniq.size
  # when 1 then :equilateral
  # when 2 then :isosceles
  # else        :scalene
  # end


end

class TriangleError < StandardError
  # def message
  #   "illegal"
  # end
end

# HINT
# The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.
# Further, each side must be larger than 0.
