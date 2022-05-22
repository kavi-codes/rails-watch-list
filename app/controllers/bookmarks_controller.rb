class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = List.find(params[:list_id])
    # @list = List.find(params[:list_id])
    # @movie = Movie.find(params[:list_id])
    # @bookmark.movie = @movie
    # @bookmark.list = @list
    @bookmark.save
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
