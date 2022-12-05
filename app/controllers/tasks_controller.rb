class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.country = Country.first # where(name: "Switzerland")
    if @task.save
      @user_task = UserTask.create({
        task: @task,
        user_profile: current_user.user_profile,
        status: "Active"
        # user-generated column
      })
      redirect_to user_profile_user_tasks_path(current_user.user_profile)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :content, :topic_id)
  end

end
