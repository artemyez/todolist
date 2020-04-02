class TasksController < ApplicationController
  before_action :find_task, except: [:index, :new, :create]

  def index
    @task = Task.all
  end

  def new; end

  def show; end

  def edit; end

  def complete
    @task.toggle!(:done)

    redirect_to list_path(@task.list_id)
  end

  def create
    @task = Task.create(task_params)

    redirect_to list_path(@task.list_id)
  end

  def update
    @task.update(task_params)

    redirect_to list_path(@task.list_id)
  end

  def destroy
    @task.destroy

    redirect_to list_path(@task.list_id)
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :done, :list_id)
  end
end
