class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  
  def show
    # /movies/show/1
    @movie = Movie.find(params[:id])
    
    #평점 평균을 내는 코드
    #요소를 다 더해서 요소의 개수로 나눈다.
    sum = 0
    @movie.reviews.each do |m|
      sum += m.score
    end
    @avg = sum.to_f / @movie.reviews.size
  end

  def new
  end

  def create
  end
  
  def review
    # /movies/:id/review
    #리뷰를 작성합니다.
    # content, score
    Review.create(
      content: params[:content],
      score: params[:score],
      movie_id: params[:id]
    )
    redirect_to :back
  end
end
