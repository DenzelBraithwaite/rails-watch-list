class BookmarksController < ApplicationController
  def index
    @list = List.find(params[:list_id])
    @bookmarks = Bookmark.all
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(strong_params)
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
  end

  def destroy
  end

  private

  def strong_params
    params.require(:bookmark).permit(:comment, :list_id, :movie_id)
  end
end
