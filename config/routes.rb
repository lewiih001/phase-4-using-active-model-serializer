get '/movie_summaries', to: 'movies#summaries'

# app/controllers/movies_controller.rb
def summaries
  movies = Movie.all
  render json: movies, each_serializer: MovieSummarySerializer
end
