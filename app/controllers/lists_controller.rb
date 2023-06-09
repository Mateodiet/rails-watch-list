class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    redirect_to lists_path(@lists)
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to list_path(@list), status: :see_other
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
