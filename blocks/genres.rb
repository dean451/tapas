class Genres

  def initialize
    @names = ["actions", "comedy", "sci-fi", "adventure"]
  end

  def each
    @names.each {|name| yield name}
  end

end

genres = Genres.new

genres.each {|name| puts name}
