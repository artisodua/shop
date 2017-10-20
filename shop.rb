if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative "lib/product"
require_relative "lib/movie"
require_relative "lib/book"

movie = Movie.new(price: 390, amount: 4)

puts "Фильм Леон стоит #{movie.price} руб."