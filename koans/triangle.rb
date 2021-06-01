# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if numbers_below_possible(a, b, c)
    raise TriangleError, "One of the sides are 0 or negative (below allowed)"
  end

  if triangle_not_possible(a, b, c)
    raise TriangleError, "Triangle not possible with values passed"
  end

  if a == b && a == c
    return :equilateral
  end

  if a == b || a == c || b == c
    return :isosceles
  end

  :scalene
end

def numbers_below_possible(a, b, c)
  a <= 0 || b <= 0 || c <= 0
end

def triangle_not_possible(a, b, c)
  x, y, z = [a, b, c].sort
  x + y <= z
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
