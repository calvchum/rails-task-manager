class TasksController < ApplicationController
# READ
# list all tasks
# view the details of a task, loop over to display
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    redirect_to task_path(params[:id])
    # @restaurant.? # We'll see that in a moment.
  end

end


# Create
# add a new task


# Update
# edit a task (mark as completed / update title & details)


# Destroy
# remove a task
