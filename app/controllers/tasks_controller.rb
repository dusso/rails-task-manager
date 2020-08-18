class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

    # EDIT (PATCH) /restaurants/:id
  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

    # CREATE (GET) /task/new
  def new
    @task = Task.new
  end

  def edit
  end

    # CREATE (POST) /tasks
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  # DESTROY (DELETE) /tasks/:id
  def destroy
    @task.destroy
    redirect_to tasks_path
  end
  private

  # STRONG PARAMS
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  # BEFORE ACTION FILTER
  def set_task
    @task = Task.find(params[:id])
  end

end
