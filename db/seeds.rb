require "json"
require "open-uri"

url = 'https://tmdb.lewagon.com/movie/top_rated'

json_serialized = URI.parse(url).read
json = JSON.parse(json_serialized)


movies = json["results"]


movies.each do |movie|
  m = Movie.new(title: movie["title"], overview: movie["overview"], poster_url: movie["poster_path"], rating: 8.2)
  m.save
end
