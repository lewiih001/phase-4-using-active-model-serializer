class MovieSummarySerializer < ActiveModel::Serializer
  attributes :summary

  def summary
    movie = Movie.find(params[:id])
    render json: movie, serializer: MovieSummarySerializer
  end