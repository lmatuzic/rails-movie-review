module MoviesHelper
  def total_gross(movie)
    if movie.successful?
      number_to_currency(movie.total_gross, precision: 0)
    else
      "Negative revenue profit"
    end
  end

  def description(movie)
    truncate(movie.description, length: 200, separator: '')
  end

  def release_date(movie)
    movie.released_on.strftime("%Y")
  end
end
