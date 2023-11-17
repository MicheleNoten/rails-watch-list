require 'open-uri'
require 'json'

# List.destroy_all
Movie.destroy_all

movies_url = "https://tmdb.lewagon.com/movie/top_rated"
movies_serialized = URI.open(movies_url).read
movies = JSON.parse(movies_serialized)['results']

movies.each do |movie|
  Movie.create(
    title: movie['title'],
    overview: movie['overview'],
    rating: movie['vote_average'],
    poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}"
  )

lists.each do |list|
  List.create(

  )
end
