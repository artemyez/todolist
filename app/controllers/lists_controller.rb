class ListsController < ApplicationController
  before_action :find_list, except: [:index, :new, :create]

  def index
    @lists = List.all
  end

  def new; end

  def show; end

  def edit; end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to root_path
    else
      redirect_to root_path, danger: "Such list already exist"
    end
  end

  def update
    if @list.update(list_params)
      redirect_to root_path
    else
      redirect_to edit_list_path, danger: "Such list already exist"
    end
  end

  def destroy
    @list.destroy

    redirect_to root_path
  end

  private

  def find_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:title).merge(user_id: current_user.id)
  end
end
