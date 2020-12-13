class Movie < ApplicationRecord
  def successful?
    total_gross > 500000
  end
end
