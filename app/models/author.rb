class Author < ApplicationRecord
  def coordinates
    [rand(90), rand(90)]
  end

  def publication_years
    ((1..rand(10)).to_a.map { 2020 - rand(100) }).sort
  end
end
