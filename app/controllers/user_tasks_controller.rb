class UserTasksController < ApplicationController
  def update
  end

  def index
    @tasks = UserTask.where(user_profile: current_user.user_profile)
    @active_tasks = @tasks.where(status: "active")
    @upcoming_tasks = @tasks.where(status: "upcoming")
    @completed_tasks = @tasks.where(status: "completed")
  end

  def show
    @task = UserTask.find(params[:id])
  end
end
