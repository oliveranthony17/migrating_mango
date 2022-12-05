class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    # @country = Country.find(params[:country_id])
    # @task.country = @country
    @task.order = 0
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
    params.require(:task).permit(:title, :content)
  end

end
