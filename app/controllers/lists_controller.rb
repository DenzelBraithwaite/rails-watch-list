class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    raise
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(strong_parms)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def strong_parms
    params.require(:list).permit(:name)
  end
end
