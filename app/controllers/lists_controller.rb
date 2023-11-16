class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit]

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def edit
  end

  def create
    @list = List.new(list_params)
    if @list.save
    redirect_to @list, notive: "List was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @list.update(rest_params)
      redirect_to @list, notice: "List was successfully updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

private

def set_list
  @list = List.find(params[:id])
end
end

def list_params
  params.require(:list).permit(:name)
end
