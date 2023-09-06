class MovieListsController < ApplicationController
  def index
    @movieList = MovieList.all
  end
  def show
    @movieList = MovieList.find(params[:id])
    render json: @movieList
  end 

  def create
    @movieList = MovieList.create(
      movie_title: params[:movie_title],
      movie_description: params[:movie_description],
      movie_categories: params[:movie_categories],
      movie_rating: params[:movie_rating]
    )
    render json: @movieList
  end 

  def update
      @movieList = MovieList.find(params[:id])
      @movieList.update(
        movie_title: params[:movie_title],
        movie_description: params[:movie_description],
        movie_categories: params[:movie_categories],
        movie_rating: params[:movie_rating]
      )
      render json: @movieList
  end 

  def destroy
      @movieLists = MovieList.all 
      @movieList = MovieList.find(params[:id])
      @movieList.destroy
      render json: @movieLists
  end 
end
